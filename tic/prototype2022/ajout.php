<?php
mysql_connect("localhost", "root", "") or die("Unable to connect to database");
mysql_select_db("location_22") or die("Unable to select database");

$cin = $_POST['cin'];
$nom = $_POST['nom'];
$pre = $_POST['prenom'];
$tel = $_POST['tel'];
$req = "SELECT * FROM client WHERE cin='$cin'";
$res = mysql_query($req);
if (mysql_num_rows($res)) {
    echo ("client exisitant");
} else {
    $req2 = "insert into client values ('$cin', '$nom', '$pre', '$tel')";
    $s2 = mysql_query($req2);
    echo ('client added to database');
}
