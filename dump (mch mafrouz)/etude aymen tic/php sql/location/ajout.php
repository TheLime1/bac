<?php
mysql_connect("localhost","root","")or die("erreur connection");
mysql_select_db("location")or die("erreur selection");
$cin=$_POST['cin'];
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$adresse=$_POST['adresse'];
$tel=$_POST['tel'];
$d=date("y-m-d");
$requete="Insert into client values('$cin','$nom','$prenom','$adresse','$tel')";
mysql_query($requete);
echo(mysql_affected_rows()."client est ajoute le".$d);
mysql_close();

?>