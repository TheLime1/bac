<?php
mysql_connect("localhost","root","") or die ("Erreur connexion");
mysql_select_db("sallefete") or die ("Erreur selection");
$numc=$_POST['numc'];
$nomc=$_POST['nomc'];
$prenc = $_POST['prec'];
$tel=$_POST['tel'];
$mail=$_POST['ml'];
$salle = $_POST['salle'];
$de = $_POST['de'];
$he = $_POST['he'];
$ps = $_POST['ps'];
$req1 = "select numclt from client where(numclt='$numc')";
$res1 = mysql_query($req1);
if(mysql_num_rows($res1)==0)
{$req2 = "insert into client values('$numc','$nomc','$prenc','$tel','$mail')";
$res2 = mysql_query($req2);
}
$req3 = "select * from location where(numsalle='$salle') and (dateloc='$de')";
$res3 = mysql_query($req3);
if(mysql_num_rows($res3)>0){
echo("Changez salle ou date");
}
else
{$req4 ="insert into location values('$salle','$de','$numc','$he','','$ps')";
$res4 =mysql_query($req4);
if(mysql_affected_rows()>0){
    echo("Location enrgistrée avec succès");
}
else{
    echo("erreur d'ajout");
}}
?>