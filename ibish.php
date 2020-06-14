<?php
require_once("inc.php") ; 

function semester_weeks($semester) { #{{{
	$dto = new DateTime();
	$weeks=[];
	if($semester=='winter') { $start=36; $tef_year=$_SESSION['tef_year']; } else { $start=5; $tef_year=$_SESSION['tef_year']+1; }
	

	for($i=$start; $i<=$start+21; $i++) {
		$dto->setISODate($tef_year, $i);
		$w0=strftime("%d", $dto->getTimestamp());
		$month0= strftime("%m", $dto->getTimestamp());
		$dto->modify('+6 days');
		$w1= strftime("%d", $dto->getTimestamp());
		$month1= strftime("%m", $dto->getTimestamp());
		$y=$dto->format('Y');
		if($y>2020) { break; }
		$weeks[$i]="$w0.$month0-$w1.$month1";
	}
	return $weeks;
}
/*}}}*/
function grup_from_forma($dbrecord) {/*{{{*/
	# W bazie mamy cw ; lab1 ; lab2 ; wyk
	#				2 ; 0    ; 4    ; 1
	# i takie dane musza przyjsc w $dbrecord, najlepiej z v_ramowy. 
	# Funkcja zwroci liczbe grup dla zadanej formy

	if(empty($dbrecord['forma'])) { $dbrecord['forma']='--'; }

	$forma=$dbrecord['forma'];
	if(in_array($forma, array("ćw", "ćw.proj"))) { $forma='cw'; }
	if($forma=='tylko.egz') { 
		$grup=1; 
	} else if($forma=='lab') { 
		$grup=$dbrecord['lab1'] + $dbrecord['lab2'];
	} else if($forma=='--') { 
		$grup=0; 
	} else {
		$grup=$dbrecord[$forma];
	}
	$grup+=0;
	$dbrecord['cw']+=0;
	$dbrecord['lab1']+=0;
	$dbrecord['lab2']+=0;
	$dbrecord['wyk']+=0;

	$godzin_do_podzialu="<tr><td><fuksja>godzin do podziału</fuksja><td>";
	if($forma=='lab') { 
		$godzin_grup="<tr><td><td>godzin * grup * 1 prowadzący &nbsp; &nbsp; = ".$dbrecord['godzin']." * $dbrecord[lab1] * 1 + <br> 
		godzin * grup * 2 prowadzących = ".$dbrecord['godzin']." * $dbrecord[lab2] * 2  ";
		$suma_godzin="$godzin_do_podzialu<fuksja>".($dbrecord['godzin'] * $dbrecord['lab1'] * 1 + $dbrecord['godzin'] * $dbrecord['lab2'] * 2 )."</fuksja>";
		$suma_godzin2=$dbrecord['godzin'] * $dbrecord['lab1'] * 1 + $dbrecord['godzin'] * $dbrecord['lab2'] * 2;
	} else { 
		$godzin_grup="<tr><td><td>godzin * grup = ".$dbrecord['godzin']." * $grup";
		$suma_godzin="$godzin_do_podzialu<fuksja>".($grup * $dbrecord['godzin'])."</fuksja>";
		$suma_godzin2=$grup * $dbrecord['godzin'];
	}
	return array('grup'=>$grup, 'godzin_grup'=>$godzin_grup, 'suma_godzin'=>$suma_godzin, 'suma_godzin2'=>$suma_godzin2);
}

	
/*}}}*/

function form_X_prowadzacych($rr) { /*{{{*/
	# echo "select * from ramowy_prowadzacy where ramowy_id=6950" | psql cia
	# echo "update ramowy_prowadzacy set tydzien='31-06.sie'" | psql cia
	$prowadzacych_per_tydzien=8;

	$ramowy_id=$rr['id'];
	$collect=[];
	$suma=0;
	foreach(semester_weeks('winter') as $tydzien) {
		$collect[$tydzien]=[];
		$r=query("SELECT p.id,p.nazwisko,rp.godzin FROM pracownicy p, ramowy_prowadzacy rp WHERE p.id=rp.wykladowca_id AND ramowy_id=$1 AND rok=$2 AND tydzien=$3 AND p.id IN (SELECT wykladowca_id FROM ramowy_prowadzacy WHERE ramowy_id=$1 AND rok=$2)", array($ramowy_id, $_SESSION['tef_year'], $tydzien));
		if(!empty($r)) { 
			foreach($r as $k=>$z) {
				#$collect[$tydzien][]=$_SESSION['nn']->wykladowca_droplist($z['id'], "prowadzacy[$tydzien][]")." <input style='width: 4px; margin: 0px; color: #dad;  background-color: #424' autocomplete=off type=text name=prowadzacy_godzin[$tydzien][] value=".$r[$k]['godzin'].">";
				$suma+=$r[$k]['godzin'];
			}
		} 
	}
	foreach($collect as $tydzien=>$data) {
		for($i=count($data); $i<$prowadzacych_per_tydzien; $i++) {
			#$collect[$tydzien][]=$_SESSION['nn']->wykladowca_droplist('', "prowadzacy[$tydzien][]")." <input style='width: 16px; margin: 0px; color: #dad; background-color: #424' autocomplete=off size=3 type=text name=prowadzacy_godzin[$tydzien][] value=''>";
		}
	}
	foreach($collect as $tydzien=>$data) {
		#$tt=preg_replace("/-/", "<br>", $tydzien);
		$collect[$tydzien]="<tr><td>$tydzien<td>".implode("<td>", $data);
	}
	return array(implode("", $collect), $suma);

}
/*}}}*/
function listing_prowadzacych($ramowy_id) { /*{{{*/
	$r=query("SELECT p.id,p.nazwisko,rp.godzin FROM pracownicy p, ramowy_prowadzacy rp WHERE p.id=rp.wykladowca_id AND ramowy_id=$1 AND rok=$2 AND p.id IN (SELECT wykladowca_id FROM ramowy_prowadzacy WHERE ramowy_id=$1 AND rok=$2)", array($ramowy_id, $_SESSION['tef_year']));
	$collect=[];
	foreach($r as $k=>$z) {
		extract($z);
		$collect[]="$nazwisko.$godzin";
	}
	if(isset($collect[0])) { $collect[0]="<przedmiot>$collect[0]</przedmiot>"; }
	$c=implode(" + ", $collect);
	return "<span class=prowadzacy> &nbsp; &nbsp;  $c</span>";

}
/*}}}*/
function update_prowadzacy() {/*{{{*/
	# psql cia -c "SELECT * FROM v_prowadzacy where ramowy_id=4560";
	# psql cia -c "SELECT * FROM ramowy where przedmiot_id=256";
	if(empty($_POST['update'])) { return; }
	dd($_POST);
	exit();
	foreach($_POST['prowadzacy_godzin'] as $k=>$v) { 
		$_POST['prowadzacy_godzin'][$k]+=0;
	}
	query("DELETE FROM ramowy_prowadzacy WHERE ramowy_id=$1 AND rok=$2", array($_GET['edit'], $_SESSION['tef_year']));

	foreach($_POST['prowadzacy'] as $k=>$i) { 
		if(!empty($i)) { 
			query("INSERT INTO ramowy_prowadzacy (wykladowca_id,ramowy_id,rok,godzin) values($1,$2,$3,$4)", array($i,$_GET['edit'], $_POST['rok'], $_POST['prowadzacy_godzin'][$k]));
		}
	}
	header("Location: ibish2.php");
}
/*}}}*/

function count_per_forma($arr) {/*{{{*/
	$collect_wyk=[];
	$collect_cw=[];
	$collect_lab=[];
	foreach($arr as $wyk=>$cw) {
		$this_wyk=[];
		foreach($cw as $lab) {
			foreach($lab as $i) { 
				$collect_lab[]=$i;
			}
			$collect_cw[]=array_sum($lab);
			$this_wyk[]=array_sum($lab);
		}
		$collect_wyk[]=array_sum($this_wyk);
	}
	return array("wyk"=>implode(", ", $collect_wyk), "ćw"=>implode(", ", $collect_cw), "lab"=>implode(", ", $collect_lab));
}
/*}}}*/
function info_podgrupy($id) { /*{{{*/
	# psql cia -c "select * from podgrupy where corka=1089 order by corka, lab ";
	# psql cia -c "UPDATE podgrupy set wyk=1 WHERE corka=1089 AND id>853"
	# psql cia -c "select * from formy";

	$r=query("SELECT * FROM podgrupy WHERE corka=$1 ORDER BY lab", array($id));
	if(empty($r)) { 
		$cols="id,matka_id,matka,semestr,corka,corka_id,liczebnosc,przedmiot_full as przedmiot,przedmiot_id,godzin,forma,cw,wyk,lab1,lab2";
		$rr=query("SELECT $cols FROM v_ramowy WHERE id=$1 AND rok=$2", array($_GET['edit'], $_SESSION['tef_year'])); 
		dd($rr);
		die("<red>Brak córki na rok $_SESSION[tef_year]</red>");
	}
	foreach($r as $v) {
		if(!empty($v['lab_count'])) { 
			if(empty($pp[$v['wyk']]))           { $pp[$v['wyk']]=[]; }
			if(empty($pp[$v['wyk']][$v['cw']])) { $pp[$v['wyk']][$v['cw']]=[]; }
			$pp[$v['wyk']][$v['cw']][]=$v['lab_count']; 
		}
	}
	$arr=[];
	foreach($pp as $wyk=>$cw) { 
		$c=[];
		foreach($cw as $lab) { 
			$l=[];
			foreach($lab as $count) { 
				$l[]=intval($count);
			}
			$c[]=$l;
		}
		$arr[]=$c;
	}
	$z=count_per_forma($arr);
	$y='';
	foreach($z as $k=>$v) { 
		$f=$k;
		$y.="$f: $v &nbsp; &nbsp; ";
	}
	return $y;
}
/*}}}*/
function edit_form() {/*{{{*/
	# psql cia -c "select * from godziny";
	# psql cia -c "select * from ramowy_prowadzacy";
	if(!isset($_GET['edit'])) { return; }
	echo "<a class=blink href=ibish.php>Powrót</a><br><br>";
	$cols="id,matka_id,matka,semestr,corka,corka_id,liczebnosc,przedmiot_full as przedmiot,przedmiot_id,godzin,forma,cw,wyk,lab1,lab2";
	$r=query("SELECT $cols FROM v_ramowy WHERE id=$1 AND rok=$2", array($_GET['edit'], $_SESSION['tef_year'])); 
	if(empty($r)) { die("<br><br><red>W programie ramowym nie ma pozycji $_GET[edit] na rok $_SESSION[tef_year]</red>"); }
	$meta=grup_from_forma($r[0]);
	$r[0]['grup']=$meta['grup'];
	$r[0]['godzin_grup']=$meta['godzin_grup'];
	$r[0]['suma_godzin']=$meta['suma_godzin'];
	$v=$r[0];
	$info_podgrupy=info_podgrupy($r[0]['corka_id']);
	$v['corka']=grupa_kolor($v['corka']);
	echo "<br>wielkości grup: $info_podgrupy";
	echo "<br><br><form method=post action=?edit=$_GET[edit]>";
	$formularz_zablokowany=0;
	if($formularz_zablokowany==0 or $_SESSION['ramowy_admin']==1) { 
		echo "<input type=hidden name=update value=1>";
		echo "<input autocomplete=off  type=submit value=zapisz>";
	} else {
		echo "<red>Formularz zablokowany. Edycja tylko przez tel. 561.</red>";
	}
	echo "<input type=hidden name=rok value=".$_SESSION['tef_year'].">";
	echo "<table>";
	$fp=form_X_prowadzacych($r[0]);

	echo "<tr><td colspan=3>";
	$suma_zaplanowanych=$fp[1];
	echo "</table>";
	echo "<table class=nowrap><tr><th>week<th>teacher1<th>teacher2 <th>teacher3<th>teacher4 <th>teacher5<th>teacher7 <th>teacher7<th>teacher8 $fp[0]</table>";
	echo "</form>";

}
/*}}}*/

function listing() {/*{{{*/
	#{ 'students': [ [15,15], [16,14] ], 'teachers': [ [2,2], [2,1] ] }
	# echo "drop table tefuni_input; create table tefuni_input as select id,corka as group,semestr as semester, forma as form,przedmiot as subject, godzin as hours,'' as blocks, liczebnosc as group_structure, przedmiot_full as subject_full from v_ramowy order by id; update tefuni_input set form='lec' where form='wyk'; update tefuni_input set form='exc' where form='ćw'; update tefuni_input set form='exc' where form='ćw.proj'; update tefuni_input set form='-' where form='tylko.egz'; select * from tefuni_input" | psql cia

	if(!empty($_GET['edit'])) { return; }
	$raport="<table>";
	$raport.="<tr><th>form<th>semester<th>subject<th>group<th>hours";

	foreach(query("SELECT * FROM tefuni_input where subject='Tec.inf' ORDER BY form,semester,subject,id") as $k=>$v) { 
		#$gg=query("SELECT SUM(godzin) AS zaplanowal FROM ramowy_prowadzacy WHERE ramowy_id=$1 AND rok=$2", array($v['id'], $_SESSION['tef_year']));
		#$z=grup_from_forma($v);
		#if(empty($v['corka'])) { continue; }
		#$v['corka']=grupa_kolor($v['corka']);
		#$v['forma']=$_SESSION['nn']->forma_kolor($v['forma']);
		#$v['przedmiot']="<a href=?edit=$v[id]>$v[przedmiot]</a>";
		#$raport.="<tr><td> $v[forma] <td>$v[semestr]<td class=nowrap>$v[przedmiot]<td> $v[corka]  <td class=nowrap><godzin>".$gg[0]['zaplanowal']."</godzin> z <fuksja> $z[suma_godzin2] </fuksja>";
		#$raport.="<td style='max-width:600px'>".listing_prowadzacych($v['id']);
		#$raport.="<td>".$v['komentarz'];
		#if ($z['suma_godzin2'] != $gg[0]['zaplanowal'])	{ $rozbieznosci.="<tr> <td>$v[forma]<td>$v[semestr]<td class=nowrap>$v[przedmiot] <td class=nowrap>$v[corka] <td class=nowrap><godzin>".$gg[0]['zaplanowal']."</godzin> z <fuksja>$z[suma_godzin2]</fuksja><td>".listing_prowadzacych($v['id'])."<td>$v[komentarz]"; }
	}
	exit();
	$raport.="</table>";
	echo $raport;
	echo "<h1>Raport rozbieżności</h1>";
	echo "<table class=violet-table><tr><th>forma<th>semestr<th>przedmiot<th>grupa<th>godzin<th><przedmiot>zaliczający</przedmiot> + prowadzący<th>komentarz";
	echo $rozbieznosci;
	echo "</table>";
	#}
}
/*}}}*/
function main() {/*{{{*/
	css();
	update_prowadzacy();
	edit_form();
	listing();
}
/*}}}*/

main();
?> 
