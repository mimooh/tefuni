<?php
require_once("inc.php") ; 
# echo "drop table tefuni_weeks; create table tefuni_weeks(meta text, weeks text)" | psql tefuni
# echo "insert into tefuni_weeks(meta,weeks) values('2020.01', '[ \"31.08-06.09\", \"07.09-13.09\", \"14.09-20.09\", \"21.09-27.09\" ] '); select * from tefuni_weeks;" | psql tefuni
# echo "select * from tefuni_groups;" | psql tefuni
# echo "update tefuni_groups set struct='{' || struct || '}';" | psql tefuni
# echo "alter table tefuni_input alter column id type serial;" | psql tefuni

# echo "select * from tefuni_teachers" | psql tefuni
# echo "select * from tefuni_input" | psql tefuni
# echo "select * from v_tefuni" | psql tefuni
# echo "\d tefuni_input" | psql tefuni
# echo "update tefuni_input set blocks='0,2,0,2' where mod(id,2)=1 and hours<10;" | psql tefuni
# echo "create table tefuni_teachers as (select id,short from pracownicy where dydaktyk=1)" | psql cia
# pg_dump -d cia -c -C -t tefuni_teachers > t.sql
# psql -d tefuni -f  t.sql
$_SESSION['tefuni_year']=2020;
$_SESSION['tefuni_week']='2020.01';
if(empty($_SESSION['select_subject'])) { $_SESSION['select_subject']=''; }
if($_SESSION['console']==1) { 
	$_SESSION['select_subject']='Matematyka'; 
	$_GET['edit']=6485;
}

function form_subject() { #{{{
	if($_SESSION['console']==1) { return; }
	$r=query("select distinct subject,subjectf from v_tefuni order by subjectf");
	echo "<form method=post> <select name=select_subject onchange='this.form.submit()'>";
	echo "<option value='$_SESSION[select_subject]'>$_SESSION[select_subject]</option>";
	foreach($r as $k=>$v) {
		echo "<option value='$v[subjectf]'>$v[subjectf]</option>";
	}
	echo "</select></form><br><br>";

}
/*}}}*/

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
function weeks_struct($v) { #{{{
	$r=query("select weeks from tefuni_weeks where meta=$1", array($_SESSION['tefuni_week']));
	$weeks=json_decode($r[0]['weeks']);
	$blocks=explode(",", $v['blocks']);
	$w=[];
	foreach($weeks as $k=>$x) {
		$w[$x]=$blocks[$k];
	}
	return $w;
}
/*}}}*/
function structs($v) { /*{{{*/
	$z=json_decode($v['struct'],1);
	$tt=[];
	if($v['form']=='lab') {
		foreach($z['teachers'] as $k=>$x) {
			foreach($x as $vv) {
				$tt[]=$vv;
			}
		}
	}
	if($v['form']=='exc') {
		foreach($z['teachers'] as $k=>$x) {
			$tt[]=1;
		}
	}
	if($v['form']=='lec') {
		$tt[]=1;
	}
	$v['groups']=$tt;
	$v['weeks']=weeks_struct($v);
	return $v;
}
/*}}}*/
function edit_form() {/*{{{*/
	# echo "select * from v_tefuni" | psql tefuni
	# echo "update tefuni_input set blocks='2,0,2,0' where id=6427" | psql tefuni
	if(!isset($_GET['edit'])) { return; }
	echo "<a class=blink href=ibish.php>Back</a><br><br>";
	$r=query("SELECT * FROM v_tefuni WHERE id=$1", array($_GET['edit'])); 
	$structs=structs($r[0]);
	echo "<br><br><form method=post action=?edit=$_GET[edit]>";
	echo "<input type=hidden name=update value=1>";
	echo "<input autocomplete=off type=submit value=Save>";
	echo "<table>\n";
	foreach($structs['weeks'] as $k=>$v) {
		dd($k);
	}
	exit();
	$fp=teachers_droplist($r[0]);

	echo "<tr><td colspan=3>";
	echo "</table>";
	echo "<table class=nowrap><tr><th>week<th>teacher1<th>teacher2 <th>teacher3<th>teacher4 <th>teacher5<th>teacher7 <th>teacher7<th>teacher8 $fp[0]</table>";
	echo "</form>";

}
/*}}}*/
function color_form($form) {/*{{{*/
	$colors=array(
	  'lab'     => "#234" ,
	  'exc'      => "#a05" ,
	  'lec'      => "#142" ,
	 );
	return "<div style='display:inline-block; padding: 3px 4px; background-color: ".$colors[$form]."'>$form</div>";
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

	if(!empty($_GET['edit']))   { return; }
	if($_SESSION['console']==1) { return; }
	form_subject();
	$raport="";
	$raport.="<tr><th>form<th>semester<th>subject<th>group";

	foreach(query("SELECT id,form,semester,subject,gr FROM v_tefuni where subjectf=$1 ORDER BY form,semester,subject,id", array($_SESSION['select_subject'])) as $k=>$v) { 
		$v['form']=color_form($v['form']);
		$v['subject']="<a href=?edit=$v[id]>$v[subject]</a>";
		unset($v['id']);
		$raport.="\n<tr><td>".implode("<td>", $v);
	}
	echo "<table>\n$raport\n</table>";
}
/*}}}*/
function select_subject() { #{{{
	if(isset($_POST['select_subject'])) { $_SESSION['select_subject']=$_POST['select_subject']; }
}
/*}}}*/
function main() {/*{{{*/
	css();
	select_subject();
	update();
	edit_form();
	listing();
}
/*}}}*/


main();
?> 
