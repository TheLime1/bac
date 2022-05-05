<?php
mysql_connect('localhost','root','')or die ('not hosted');
mysql_select_db('sallefete')or die ('pas connectee');
$deven=$_POST['de'];
$req4="select nomsalle,capacite from salle s,location l where (s.numsalle=l.numsalle) and (dateloc='$deven')";
$res4=mysql_query($req4);
echo'<b><font color="red">les salles ocuppes</font></b>';
echo'<table border="1">
<th>nom</th>
<th>capacité</th>';
while($r=mysql_fetch_row($res4))
{
echo ("<tr><td> $r[0]</td><td>$r[1]</td></tr>");
}
echo'</table>';
?>
