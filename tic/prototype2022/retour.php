<?php
mysql_connect("localhost","root","");
mysql_select_db('location_22');
$imat=$_POST['nums'].'TU'.$_POST['numenre'];

$req="select * from voiture where imat='$imat' ";
$res=mysql_query($req);
if(mysql_num_rows($res)==0)
echo("voiture inexistante");
else{
    $req1="select * from voiture where imat='$imat' and disponible='D' ";
    $res1=mysql_query($req1);
    if(mysql_num_rows($res1)!=0)
    echo("attention ! verifier le numero d'immatriculation de la voiture");
    else{
        $req2="update voiture set disponible='D' where imat='$imat'";
        $res2=mysql_query($req2);
        $req3="update louer set date_ret=Now() where imat='$imat'";
        $res3=mysql_query($req3);
        echo("retour enregistreé avec succees");
}}
?>