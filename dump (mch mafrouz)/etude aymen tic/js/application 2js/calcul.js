function calcula(){
x=document.getElementById("t1").value;
y=document.getElementById("t2").value;
if(document.getElementById("som").checked)
op=document.getElementById("som").value;
else 
if(document.getElementById("sous").checked)
op=document.getElementById("sous").value;
else 
if (document.getElementById("div").checked)
op=document.getElementById("div").value;
else
op=document.getElementById("mul").value;
z=x+op+y;
document.getElementById("ope").value=z;
document.getElementById("res").value=eval(z);
}
function calc(){
    x=document.getElementById("t1").value;
    y=document.getElementById("t2").value;
   choix=document.getElementById("op");
   opr=choix.options[choix.selectedIndex].value;
    z=x+opr+y;
    document.getElementById("ope").value=z;
    document.getElementById("res").value=eval(z);
    }
function conv() 
{e=document.getElementById("res").value;
    document.getElementById("t3").value=parseInt(e);
    document.getElementById("t4").value=parseFloat(e);
    alert(e.length);
}