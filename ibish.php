<?php
require_once("inc.php") ; 
# echo "drop table tefuni_weeks; create table tefuni_weeks(meta text, weeks text)" | psql tefuni
# echo "insert into tefuni_weeks(meta,weeks) values('2020.01', '[ \"31.08-06.09\", \"07.09-13.09\", \"14.09-20.09\", \"21.09-27.09\" ] '); select * from tefuni_weeks;" | psql tefuni
# echo "select * from tefuni_groups;" | psql tefuni
# echo "alter table tefuni_input alter column id type serial;" | psql tefuni

# echo "select * from tefuni_groups" | psql tefuni
# echo "select * from tefuni_input" | psql tefuni
# echo "select * from v_tefuni" | psql tefuni
# echo "\d tefuni_input" | psql tefuni
# echo "update tefuni_input set blocks='0,2,0,2' where mod(id,2)=1 and hours<10;" | psql tefuni
# echo "create table tefuni_groups(gr text, struct text)" | psql tefuni
$_SESSION['tefuni_year']=2020;
$_SESSION['tefuni_week']='2020.01';

function update() {/*{{{*/
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
	header("Location: ibish.php");
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
	# psql cia -c "select * from podgrupy where corka=1089";
	# psql cia -c "UPDATE podgrupy set wyk=1 WHERE corka=1089 AND id>853"
	# psql cia -c "select * from formy";
	# psql cia -c "select distinct corka from v_ramowy limit 5";

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
	#$meta=grup_from_forma($r[0]);
	$r[0]['grup']=111;
	$r[0]['godzin_grup']=222;
	$r[0]['suma_godzin']=333;
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
	# echo "drop table tefuni_input; create table tefuni_input as select id,corka as gr,semestr as semester, forma as form,przedmiot as subject, godzin as hours,'' as blocks, przedmiot_full as subjectf from v_ramowy where rok=2019 order by id; update tefuni_input set form='lec' where form='wyk'; update tefuni_input set form='exc' where form='ćw'; update tefuni_input set form='exc' where form='ćw.proj'; delete from tefuni_input where form is null or form='' or form='--' or form='tylko.egz'; update tefuni_input set blocks='2,2,2,2'; update tefuni_input set blocks='0,2,0,2' where mod(id,2)=1 and hours<10; update tefuni_input set blocks='2,0,2,0' where mod(id,2)=0 and hours<10; select * from tefuni_input order by id;" | psql cia
	# pg_dump -d tefuni > db.sql
	# echo "drop table tefuni_input cascade;" | psql tefuni
	# psql -d tefuni -f t.sql
	# echo "select * from v_tefuni" | psql tefuni
	# echo "select * from tefuni_input order by id" | psql tefuni
	# echo "ALTER TABLE public.tefuni_input OWNER TO tefuni;" | psql tefuni


	if(!empty($_GET['edit'])) { return; }
	$raport="<table>";
	$raport.="<tr><th>form<th>semester<th>subject<th>group<th>hours";

	foreach(query("SELECT * FROM tefuni_input where subject='Tec.inf' ORDER BY form,semester,subject,id") as $k=>$v) { 
		dd($v);
		#$gg=query("SELECT SUM(godzin) AS zaplanowal FROM ramowy_prowadzacy WHERE ramowy_id=$1 AND rok=$2", array($v['id'], $_SESSION['tef_year']));
		#$z=grup_from_forma($v);
		#if(empty($v['corka'])) { continue; }
		#$v['corka']=grupa_kolor($v['corka']);
		#$v['forma']=$_SESSION['nn']->forma_kolor($v['forma']);
		#$v['przedmiot']="<a href=?edit=$v[id]>$v[przedmiot]</a>";
		#$raport.="<tr><td> $v[forma] <td>$v[semestr]<td class=nowrap>$v[przedmiot]<td> $v[corka]  <td class=nowrap><godzin>".$gg[0]['zaplanowal']."</godzin> z <fuksja> $z[suma_godzin2] </fuksja>";
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
	update();
	edit_form();
	listing();
}
/*}}}*/


main();
?> 
