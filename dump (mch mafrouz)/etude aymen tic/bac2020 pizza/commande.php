<?php
$id=$_POST["pizza"];
$qte=$_POST["qte"];
$tel=$_POST["tel"];
$mdp=$_POST["mdp"];
echo($id);
mysql_connect("localhost","root","") or die ("connection impossible<br>");
mysql_select_db("BD2020") or die ("selection de la base impossible<br>");
$req1="select Tel, MotPass From Client where Tel='$tel' AND MotPass='$mdp'";
$res1=mysql_query($req1);
$d= date("Y-m-d H:m:s");
if( mysql_num_rows($res1)!=0)
{$req3="INSERT INTO Commande values('$id','$tel','$d','$qte')";
 $res3=mysql_query($req3);
  if(mysql_affected_rows()>0)
 {echo ("Op�ration r�ussie! ");}
 else
 {echo ("prbl�me d'ajout d'une commande!!!");}
}
else
{echo("N� T�l ou mot de passe erron�!!");}
mysql_close();
?>