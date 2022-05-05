<html>
<?php
mysql_connect("localhost","root","") or die("connexion impo"); ;
mysql_select_db("bd2018") or die("bd inaccessible");
//pour les noms des variables il est recommendé d'utiliser les memes noms en BD ,HTML, Js et PHP
//attention les cases à  cocher peuvent etre non cochées donc il faut leurs attribuer 0 
$idhotel=$_POST['idhotel'];
$noteaccueil=$_POST['noteaccueil'];
$noterest=$_POST['noterest'];
if (isset($_POST['extra1'])) { 
    $extra1=$_POST['extra1'];}
else{
	$extra1=0;}
if (isset($_POST['extra2'])) {
    $extra2=$_POST['extra2'];}
else{
	$extra2=0;}
if (isset($_POST['extra3'])) {
    $extra3=$_POST['extra3'];}
else{
	$extra3=0;}
	//calcul note extra
$noteextra=$extra1+$extra2+$extra3;
$d=date("Y-m-d");
$req="select * from evaluation where idhotel='$idhotel' and dateeval='$d'";
$res=mysql_query($req);
if(mysql_num_rows($res)!=0){
echo "<center><font size=7 color='red'>cet hotel est deja evalue</font></center>";}
else{
	$req2="INSERT INTO evaluation VALUES ('$d','$idhotel','$noteaccueil','$noterest','$noteextra')";
	$res2=mysql_query($req2);
	if($res2){
		echo "<center><font size=7 color='green'>evaluation enregistree avec succees </font></center>";}
	else{
		echo "<center><font size=7 color='pink'>echec d'insertion </font></center>";}
}
//on affiche l'entete du tableau puis les lignes
echo "<table border='2' align=center><tr><td>N&deg</td><td>Hotel</td><td>Accueil</td><td>Restauration</td><td>Extra</td></tr>";
$req3="select e.idHotel, avg(e.NoteAccueil)as note1 , avg(e.NoteRest)as note2, avg(e.NoteExtra)as note3 
from evaluation e group by idhotel";
$res3=mysql_query($req3);
$n=0;
while($t=mysql_fetch_array($res3)){
	$n=$n+1;;
	echo "<tr><td>".$n."</td>";	
	echo "<td>".$t['idHotel']."</td>";
	echo "<td>".$t['note1']."</td>";	
	echo "<td>".$t['note2']."</td>";
	echo "<td>".$t['note3']."</td></tr>";}
	echo "</table>";
?>
</html>