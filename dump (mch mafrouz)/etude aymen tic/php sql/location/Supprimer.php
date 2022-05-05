<?php
mysql_connect("localhost","root","") or die("erreur connexion");
mysql_select_db("location") or die("erreur selection");
$cin=$_POST['cin'];
$d=date("y-m-d");
$req="DELETE FROM CLIENT WHERE CIN='$cin'";
$res=mysql_query($req);
echo(mysql_affected_rows()."client supprime a la date".$d);
?>