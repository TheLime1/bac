<?php
    mysql_connect("localhost","root","") or die("erruer connexion");
    mysql_select_db("location") or die("erreur selection");
    $c = $_POST['cin'];
    $n = $_POST['nom'];
    $p = $_POST['prenom'];
    $ad = $_POST['adresse'];
    $tel = $_POST['tel'];
    $req = "update client set nom='$n', prenom='$p', adresse='$ad', tel='$tel' where cin=$c";
    $res = mysql_query($req);
    $t = mysql_affected_rows();
    if($t>0){
        echo("modification de ".$t." lignes");
    }else
    {
        echo("modification non effecuees");
    }
    
        mysql_close();
    ?>