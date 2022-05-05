<?php
mysql_connect("localhost","root","")or die("probleme de connection");//0.25
mysql_select_db("hotel")or die("Verifier base de donnee");//0.25
$h=$_POST['D1'];//0.25
$ac=$_POST['R1'];//0.25
$rest=$_POST['R2'];//0.25
$dt=date("y-m-d");//0.75
$req="SELECT * FROM evaluation WHERE (idhotel='$h') AND(dateeval='$dt')";//2
$res=mysql_query($req);//0.5
if (mysql_num_rows($res)>0) //0.5
{echo 'Cet hotel est deja evalue';}//0.5
else//0.5
{$req1="insert into evaluation Values ('$dt','$h','$ac','$rest')";//2
$res1=mysql_query($req1);//0.5
if(mysql_affected_rows()>0)//0.75
echo("evaluation faite avec succes");//0.25
else//0.25
echo("pbm evaluation");//0.25

}

	?>	
