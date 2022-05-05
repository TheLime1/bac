function colorap()
{document.getElementById("mdp").style.backgroundColor="red";}

function majus() {
f=document.getElementById("t1").value;
document.getElementById("t1").value=f.toUpperCase();
}

function verifnp()
{np=document.getElementById("t1").value;
pos=np.indexOf(' ');
if (pos<1) 
{alert("doit contenir deux mots au moins ");return false}
else 
n=np.substring(0,pos);
p=np.substring(pos+1,np.length);
for(i=0;i<n.length;i++)// on peut améliorer en utilisant une autre boucle! 
if (n[i]>'Z' || n[i]<'A')
{alert("nom non alphabetique");return false;}
for(i=0;i<p.length;i++)// on peut améliorer en créant une fonction alpha en dehors de verif et l'appelant deux fois ! 
if (p[i]>'Z' || p[i]<'A')
{alert("prenom non alphabetique");return false;}}

function verifcin()    
{
	var ch=document.getElementById("cin").value;

	if (ch.length != 8)
    {
    	alert("cin doit etre de taille 8");
    	return false;
    }
    else
    {
    for (i=0;i<ch.length;i++)   
    {
    if ((ch.charAt(i)<'0')||(ch.charAt(i)>'9'))    // "0"  "9" accepté
    {alert("cin non composée de chiffres");
	return false}
    }
	}
}



function codedevis()  
{var x=document.getElementById("t1").value;
 p=x.indexOf(" ");
 c1=x.charAt(p-2)+x.charAt(p-1)	; // si on suppose que le format est PRENOM NOM
// ou bien f=x.substr(0,p-1);
//c1=f.substr(p-2,2);
var c2=document.getElementById("age").value;
var mar=document.getElementById("m") ;
choix=mar.options[mar.selectedIndex].value;//recuper la valeur de l'élement selctionné 
if (choix=="rien")
{	alert("pas de choix de marque effectué");
	return false;
}
c3=choix.substr(0,2);
var c4=document.getElementById("mdp").value.length;//longeur mot de passe 
var e=document.getElementById("mail").value;  //PS: lemail peut contenir un point autre que celui du domaine!!  
p=e.lastIndexOf(".");  // 1ere position rencontree du point dans la chaine e en commencant la recherche par sa fin
c5=e.substring(p+1,e.length);   //ou e.substr(p+1, (e.length-p))
code=c1+c2+c3+c4+c5;
alert("votre code = "+ code);
}