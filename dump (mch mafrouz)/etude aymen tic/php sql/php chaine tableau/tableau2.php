<?php
$ventes=array("cd"=>500,"dvd"=>600,"flashdisuqe"=>200,"disquette"=>142,"disquedur"=>20);
$a=key($ventes);
$b=pos($ventes);
echo($a."<br>");
echo($b."<br>");
Next($ventes);
$c=key($ventes);
$d=pos($ventes);
echo($c."<br>");
echo($d."<br>");
sort($ventes);
foreach ($ventes as $value)
{	Echo ("$value.<br>");};

rsort($ventes);
$total=0;
foreach ($ventes as $key=>$value)
{	Echo ("$value.<br>");
                $total=$value+$total;
};
echo("le nombre d'article totales".$total); 

?>