function calculSupp()
{nbp=Number(document.getElementById("nbp").value);
if (document.getElementById("s").checked==false)
{s=0;}
else 
{s =Number(document.getElementById("s").value);}
if (document.getElementById("ph").checked==false)
{ph=0;}
else
{ph= Number(document.getElementById("ph").value);}
ps=nbp*(ph+s);   
document.getElementById("ps").value=ps;
}