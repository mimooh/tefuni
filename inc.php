<?php
session_name('tefuni');
session_start();

if(empty($_SERVER['SERVER_NAME'])) { $_SESSION['console']=1; } else { $_SESSION['console']=0; }

# debug/*{{{*/

function dd() {
	if($_SESSION['console']==1) { 
		foreach(func_get_args() as $v) {
			$out=print_r($v,1);
			echo $out;
		}
		echo "\n";
	} else {
		foreach(func_get_args() as $v) {
			echo "<pre>";
			$out=print_r($v,1);
			echo htmlspecialchars($out);
			echo "</pre>";
		}
		echo "<br><br>";
	}
}

/*}}}*/
function css() { #{{{
	$header="<!DOCTYPE html>
	<html>
	<head>
		<meta charset='utf-8'>
		<title>tefuni</title>
		<meta name='viewport' content='width=device-width, initial-scale=1, minimum-scale=1'>
		<link rel='stylesheet' href='css/css.css'>
	</head>
	<a target=blank_ style='float:right' class=blink href=https://github.com/mimooh/tefuni/>github</a>
	";
	if($_SESSION['console']==0) { echo "$header"; }
}
/*}}}*/
function reportbug($details) {/*{{{*/
	if($_SESSION['console']==1) { dd($details); return; }
	$reportquery=join("\n\n" , array("srv: $_SERVER[SERVER_NAME]", date("G:i:s"), $_SERVER['REMOTE_ADDR'], $_SERVER['HTTP_USER_AGENT'], $_SERVER['REQUEST_URI'], $details, "\n\n"));
	if($_SERVER['SERVER_NAME']=='localhost') { 
		echo "<fatal>$details</fatal>"; 
	} else {
		echo "<fatal>Error</fatal>"; 
	}
	die();
}
/*}}}*/
function query($qq,$arr=[]) { /*{{{*/
	extract($_SESSION);
	if(!empty(debug_backtrace()[1])) { 
		$caller=debug_backtrace()[1]['function'];
	} else {
		$caller="None";
	}

	$connect=pg_connect("dbname=tefuni user=tefuni");
	if(empty($connect)) { die("db connect error"); }
	$arr_str=implode(",", $arr);
	($result=pg_query_params($connect, $qq, $arr)) || reportBug(implode("\n\n", array("caller: $caller()", "$qq", "params: [$arr_str]", pg_last_error($connect))));
	$k=pg_fetch_all($result);
	if(is_array($k)) { 
		return $k;
	} else {
		return array();
	}
}
/*}}}*/
function querydd($qq,$arr=[]){ /*{{{*/
	# query debugger
	echo "<pre>";
	echo "$qq ";
	print_r($arr);
	echo "<br>";
	return array();
}
/*}}}*/

function pg_nulls($arr) { #{{{
	foreach($arr as $k=>$v) {
		$arr[$k]=trim($v);
		if(!is_int($v) && $v=='') {
			$arr[$k]="\N";
		}
	}
	return $arr;
}
/*}}}*/
function copy_query($table, $keys, $arr) {#{{{
	// call: copy_query("pracownicy", "nazwisko,imie", [ ['Kowalski', 'Jan'], ['Kowal', 'Janina'] ])

	$copy=[];
	foreach(array_filter($arr) as $v) {
		$copy[]=implode("\t", pg_nulls($v));
	}

	$q="COPY $table ($keys) FROM stdin;\n";
	$q.=implode("\n", $copy);
	$q.="\n";
	$q.="\.\n";
	$q.="\n";
	$tmpfname = tempnam("/tmp", "sonda");
	file_put_contents($tmpfname, $q);
	$z=file_get_contents("$tmpfname");
	exec("cat $tmpfname | psql -U tefuni tefuni 2>&1", $out);
	if(!preg_match("/^COPY /", $out[0])) { die($out[0]); }
}
/*}}}*/

