<?php
$t1=$_POST['t1'];
$t2=$_POST['t2'];
$t3=$_POST['t3'];
$tx=$_POST['tx'];
$t4=$_POST['t4'];
$t5=$_POST['t5'];
mysql_connect("localhost","root","") or die ("connection impossible");
mysql_select_db("bd2020") or die ("selection de la base impossible");
$rq1="select Tel, Nom, Prenom From Client where Tel=$t3;";
$res1=mysql_query($rq1);
if( mysql_num_rows($res1)==0)
{$req2="Insert into Client values('$t3','$t1','$t2','$tx','$t4');";
 $res2=mysql_query($req2);
  if(mysql_affected_rows()>0)
  {echo ("insertion r�ussie");}
  }
  else
  { $i=mysql_fetch_array($res1);
    if(($t3== $i["Tel"]) && ($t1== $i["Nom"]) && ($t2 == $i["Prenom"]))
	echo("Client d�j� inscrit!");
	 else
	 echo("Erreur: Tel, Nom ou Pr�nom erron�");
	 } 
mysql_close();
?>