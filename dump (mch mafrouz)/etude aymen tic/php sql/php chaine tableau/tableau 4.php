<?php
$ventes=array("cd"=>500,"dvd"=>418,"flashdisuqe"=>200,"disquette"=>142,"disquedur"=>20);
$a=key($ventes);
$b=pos($ventes);
echo($a);
echo($b."<br>");
ksort($ventes);
$total=0;
While (list($key,$value)=each($ventes))
{	Echo ("$key.<br>");
                $total=$value+$total;
};
echo("le nombre d'article totales".$total); 


?>