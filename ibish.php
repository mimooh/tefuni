<?php
require_once("inc.php") ; 

# echo "select * from tefuni_assign" | psql tefuni
# echo "select * from tefuni_groups" | psql tefuni
# echo "select * from tefuni_input" | psql tefuni
# echo "select * from tefuni_weeks" | psql tefuni
# echo "select * from v_tefuni" | psql tefuni
# echo "select distinct(subject) from v_tefuni" | psql tefuni
#
# grup   ; form ; sub ; students ; teachers
# ND-BW4 ; lab  ; 1   ; 12       ; 2
# ND-BW4 ; lab  ; 2   ; 13       ; 2
#
$_SESSION['tefuni_week']='2020.01';
if(empty($_SESSION['select_subject'])) { $_SESSION['select_subject']=''; }
if($_SESSION['console']==1) { 
	$_SESSION['select_subject']='Matematyka'; 
	$_GET['edit']=6485;
}

function subjects_droplist() { #{{{
	if($_SESSION['console']==1) { return; }
	$r=query("select distinct subject,subject_full from v_tefuni order by subject_full");
	echo "<form method=post> <select name=select_subject onchange='this.form.submit()'>";
	echo "<option value='$_SESSION[select_subject]'>$_SESSION[select_subject]</option>";
	foreach($r as $k=>$v) {
		echo "<option value='$v[subject_full]'>$v[subject_full]</option>";
	}
	echo "</select></form><br><br>";

}
/*}}}*/
function teachers_droplist($week, $id) { #{{{
	# echo "create table tefuni_assign (id serial primary key, tefuni_id int, teacher_id int, week text, hours int)" | psql tefuni
	# echo "select * from v_tefuni_assign" | psql tefuni
	$t_row=[];
	$r=query("select * from v_tefuni_assign where tefuni_id=$1 and week=$2 order by name, hours desc", array($id, $week));
	foreach($r as $k=>$v) {
		$t_row[]=array($v['teacher_id'], $v['name'], $v['hours']);
	}

	for($i=count($t_row); $i<8; $i++) {
		$t_row[]=array(null, null, null);
	}
	echo "<tr><td>$week";
	foreach($t_row as $k=>$v) {
		echo "<td><select name=select_teachers[$week][]>";
		echo "<option value=$v[0]>$v[1]</option>";
		foreach(query("select * from tefuni_teachers order by name") as $tt) {
			echo "<option value='$tt[id]'>$tt[name]</option>";
		}
		echo "</select>&nbsp; ";
		echo "<input style='background-color: #424; width:16px' type=text name=hours[$week][] value=$v[2]>";
	}
}
/*}}}*/

function update() {/*{{{*/
	# echo "select * from v_tefuni_assign" | psql tefuni
	if(empty($_POST['update'])) { return; }
	query("DELETE FROM tefuni_assign WHERE tefuni_id=$1", array($_POST['tefuni_id']));

	$copy=[];
	foreach($_POST['select_teachers'] as $week=>$teachers) { 
		foreach($teachers as $pp=>$t) {
			if(!empty($t) and !empty($_POST['hours'][$week][$pp])) { 
				$copy[]=array('tefuni_id'=>$_POST['tefuni_id'], 'teacher_id'=>$t, 'week'=>$week, 'hours'=>$_POST['hours'][$week][$pp]);
			}
		}
	}
	copy_query("tefuni_assign", "tefuni_id,teacher_id,week,hours", $copy);
	header("Location: ibish.php?edit=$_POST[tefuni_id]");
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
	# echo "\d" | psql tefuni
	# echo "select * from v_tefuni" | psql tefuni
	# echo "select * from tefuni_weeks" | psql tefuni
	# echo "select * from tefuni_assign" | psql tefuni
	# echo "select * from tefuni_input" | psql tefuni
	# echo "select * from tefuni_groups" | psql tefuni

	$r=query("select weeks from tefuni_weeks where meta=$1", array($_SESSION['tefuni_week']));
	$weeks=json_decode($r[0]['weeks']);
	$blocks=explode(",", $v['blocks']);
	$w=[];
	foreach($weeks as $k=>$x) {
		$w[$x]=$blocks[$k];
	}
	dd($w);
	return $w;
}
/*}}}*/
function read_structs($v) { /*{{{*/
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
function edit() {/*{{{*/
	# echo "select * from v_tefuni" | psql tefuni
	if(!isset($_GET['edit'])) { return; }
	echo "<a class=blink href=ibish.php>Back</a><br><br>";
	$r=query("SELECT * FROM v_tefuni WHERE id=$1", array($_GET['edit'])); 
	$structs=read_structs($r[0]);
	echo "<form method=post action=?edit=$_GET[edit]>";
	echo "<input type=hidden name=update value=1>";
	echo "<input type=hidden name=tefuni_id value=$_GET[edit]>";
	echo "<br><grupa>$structs[gr]</grupa> $structs[subject_full] ".color_form($structs['form']);
	echo "<br><br><input autocomplete=off type=submit value=Save>";
	echo "<table class=nowrap><tr><th>week<th>teacher1<th>teacher2 <th>teacher3<th>teacher4 <th>teacher5<th>teacher6 <th>teacher7<th>teacher8";
	foreach($structs['weeks'] as $k=>$v) {
		teachers_droplist($k, $_GET['edit']);
	}
	echo "</table>";
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

	if(!empty($_GET['edit']))   { return; }
	if($_SESSION['console']==1) { return; }
	subjects_droplist();
	$raport="";
	$raport.="<tr><th>form<th>semester<th>subject<th>group";

	foreach(query("SELECT id,form,semester,subject,gr FROM v_tefuni where subject_full=$1 ORDER BY form,semester,subject,id", array($_SESSION['select_subject'])) as $k=>$v) { 
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
	edit();
	listing();
}
/*}}}*/


main();
?> 
