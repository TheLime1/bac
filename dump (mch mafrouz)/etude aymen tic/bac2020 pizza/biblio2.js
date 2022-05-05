function alpha(ch) {
ch=ch.toUpperCase();
	for (i = 0; i < ch.length; i++) 
	{
		if ((ch[i]< 'A') || (ch[i]> 'Z'))
			{return false;}
			
	}
	
}
function verif1() {
nom=document.getElementById("t1").value;
prenom=document.getElementById("t2").value;
tel=document.getElementById("t3").value;
adresse=document.getElementById("tx").value;
password=document.getElementById("t4").value;
confpassword=document.getElementById("t5").value;
	if (alpha(nom)==false) 
	{
		alert("Nom Invalide:seule les caractères alphabétiques sont accepté");
		return false;
	}
	if (alpha(prenom) == false) {
		alert("PreNom Invalide:seule les caractères alphabétiques sont accepté");
		return false;
	}
	if (isNaN(tel) || Number(tel[0]) <= 1 || (tel.length != 8)) {
		alert("Tel Invalide");
		return false;
	}
    if (adresse.length < 10) {
		alert("Adresse Invalide");
		return false;
	}
    if ((password.length != 6) || (password.indexOf(" ") >= 0)) {
		alert("Mot de passe Invalide");
		return false;
	}
	if ((password != confpassword)) {
		alert("Confirmation Mot de passe Invalide");
		return false;
	}
}
function verif2() {

	var pizza =document.getElementById("pizza").value;
	var tel = document.getElementById("tel").value;
	var password =document.getElementById("mdp").value;
	var quantite = Number(document.getElementById("qte").value);

	if (pizza == 0) {
		alert("Pizza Invalide");
		return false;
	}
	if ((quantite < 1) || (quantite > 5)) {
		alert("Quantité Invalide");
		return false;
	}
	if (isNaN(tel) || Number(tel[0]) <= 1 || (tel.length != 8)) {
		alert("Tel Invalide");
		return false;
	}

	if ((password.length != 6) || (password.indexOf(" ") >= 0)) {
		alert("Mot de passe Invalide");
		return false;
	}
}