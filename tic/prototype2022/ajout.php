<?php
mysql_connect("localhost","root","");
mysql_select_db('location_22');
$ncin=$_POST['ncin'];
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$tel=$_POST['tel'];
$req="select * from client where ncin='$ncin' ";
$res=mysql_query($req);
if(mysql_num_rows($res)!=0)
echo("client existant");
else{
    $req2="insert into client values('$ncin','$nom','$prenom','$tel')";
    $res2=mysql_query($req2);
    echo("client ajouter avec succes");
}



?>