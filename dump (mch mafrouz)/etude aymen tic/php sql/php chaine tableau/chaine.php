<html>
<head>
<title>affichage</title>
</head>

<body>
<script language='php'>
$ch=$_POST['T1'];
$ind=$_POST['T2'];
$charemp=$_POST['T3'];
$remp=$_POST['T4'];
$sep=$_POST['T5'];

$ch1=trim($ch) ;
echo("lachaine sans espace : $ch1 <br>");
$sch=substr($ch,$ind);
echo("la sous chaine est : $sch <br>");
$nch=str_replace($charemp,$remp,$ch);
echo("votre nouvelle chaine est : $nch <br>");
$tab=explode($sep,$ch); 
for ($i=0; $i<sizeof($tab); $i++)
 {
 echo "<li>".$tab[$i]."</li>";
 }

</script>

</body>

</html>
