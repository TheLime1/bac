<?php
mysql_connect("localhost", "root", "") or die("Unable to connect to database");
mysql_select_db("location_22") or die("Unable to select database");

$num=$_POST['serie'].'TU'.$_POST['num'];
$req=mysql_query("SELECT * FROM voiture where imat=$num);
if(mysql_num_rows($req)==0)
    echo('votre voiture iniixiixi');
else
{$r2=mysql_query("select * from voiture where imat='$m' and 
disponible='D'");
if(mysql_num_rows($r2)!=0)
echo("<h1>Attention! Verifier le numero dimmatriculation de la 
Voiture");
else
{$r3=mysql_query("update voiture set disponible='D' where 
imat='$m'");
$r4=mysql_query("update louer set dateret=now() where imat='$m'");
echo("<h1>Retour enregistre avec succes");}

?>
