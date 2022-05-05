<?php
mysql_connect("localhost", "root", "") or die("Unable to connect to database");
mysql_select_db("location_22") or die("Unable to select database");

$req = ("SELECT * FROM voiture where disponible='D'");
echo ("<table border =1>");
echo ("<tr><th>Matricule voiture</th><th>model de voiture</th><th>peix lox</th>");
$s=mysql_query($req);
while($e=mysql_fetch_row($s))
    echo ("<tr><td>$e[0]</td><td>$e[1]</td><td>$e[2]</td></tr>") ;
echo ("</table>");
