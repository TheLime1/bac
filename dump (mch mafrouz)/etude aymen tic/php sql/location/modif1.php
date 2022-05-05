<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    mysql_connect("localhost","root","") or die("erruer connexion");
    mysql_select_db("location") or die("erreur selection");
    $c = $_POST['cin'];
    $req = "select* from client where cin='$c'";
    $res = mysql_query($req);
    $r = mysql_fetch_row($res);
    ?>
   <form method="POST" action="modif2.php" name="f">
	
	cin <input type="text" name="cin" size="20" value=<?php echo($r[0])?> readonly><br>
	nom <input type="text" name="nom" size="20" value=<?php echo($r[1])?>><br>
	prenom <input type="text" name="prenom" size="20" value=<?php echo($r[2])?>><br>
	adresse<input type="text" name="adresse" size="20" value=<?php echo($r[3])?>><br>
	telephone <input type="tel" name="tel" size="20" value=<?php echo($r[4])?>>
	<input type="submit" value="modifier" name="B1"><input type="reset" value="annuler" name="B2">
</form>
</body>
</html>