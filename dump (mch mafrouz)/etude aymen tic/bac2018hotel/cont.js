function generercaptcha(){
	var min=1;
	var max=26;
	var car='';
	for(i=0;i<10;i++){
		var k=Math.floor(Math.random() * (max - min + 1)) + min;
		if(k%2==0){
			car=car+String.fromCharCode(k+97-1);}
		else{
			car=car+String.fromCharCode(k+65-1);}
	}
	//affecter le code dans le formulaire
	document.getElementById("code").value=car;
}
function verif(){
	
	var hotel=document.getElementById("idhotel");
    var code=document.getElementById("code").value;
    var choix=hotel.selectedIndex;
	var reponse=document.getElementById("reponse").value;
	if(choix<=0){
		alert("choisir hotel");
		return false;}
	if((document.getElementById("r1").checked==false)&&(document.getElementById("r2").checked==false)&&(document.getElementById("r3").checked==false)){
	alert("note accueil à cocher");
	return false;}
	
	if((document.getElementById("r4").checked==false)&&(document.getElementById("r5").checked==false)&&(document.getElementById("r6").checked==false)){
	alert("note restauration à cocher");
	return false;}
		nb=0;
	
	for(i=0;i<code.length;i++){
		if((code.charAt(i)>="A")&&(code.charAt(i)<="Z")){
			nb=nb+1;}}
			
		if(nb!=Number(reponse)){
		alert("nombre de maj incorrect");
		return false;}
}