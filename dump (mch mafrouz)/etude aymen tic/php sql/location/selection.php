
<?php
echo'<b><font color=#FF0000 size=5>les clients qui habitent a Tunis sont:</font></b> <br>';
mysql_connect("localhost","root","") or die("Erreur de connexion au serveur");
mysql_select_db("location") or die ("Erreur de connexion � la base de donn�es");
echo'<table border="1">
<th>cin</th>
<th>nom</th>
<th>prénom</th>
<th>àdresse</th>
<th>telephone</th>
';
$requet ="SELECT * FROM `client` where adresse='Tunis'";
$result=mysql_query($requet)or die("Erreur de de s�lection ");
while($r=mysql_fetch_row($result))
{
echo ("<tr><td> $r[0]</td><td>$r[1]</td><td>$r[2]</td><td> $r[3]</td><td>$r[4]</td></tr>");
}
echo'</table>';
?>

