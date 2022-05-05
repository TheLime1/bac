function verif()
{
c=document.getElementById("cin").value;
if ((c.length!=8)||(isNaN(c))||((c[0]!='0')&&(c[0]!='1')))//taille different de 8 ou non numerique ou  ne commence pas par zero et par 1 
{ alert("le numero de cin doit etre de 8 chiffre et commence par 0 ou 1");return false;}
else 
pse=document.getElementById("ps").value.toUpperCase();
for(i=0; i<pse.length; i++)//parcours sur tt lepseudo 
{
    if((pse[i]<"A")||(pse[i]>"Z"))
    { 
    alert("psudo invalid");return false;
    }
}
}
function offre()
{  c=document.getElementById("cin").value;
    em=document.getElementById("m").value;
    p1=em.indexOf("@");
    p2=em.lastIndexOf(".");
    ch1=em.substring(p1+1,p2);//sous chaine aprés @ et juste avant le dernier . 
    ch2=c.substring(6,8);
    ch3=ch1.toUpperCase()+ch2;
    ob=document.getElementById("ob");
    choix=ob.options[ob.selectedIndex].value;//recupere la value de l'option selectionné 
p=document.getElementById("prix").value;
p=Number(p);
if(p>choix) //si le prix proposé est supérieur ou egal a la value recuperée
alert("votre code est "+ch3+"offre acceptée")
else
alert("votre code est "+ch3+"offre refusée")
}