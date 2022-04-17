def saisir():
    
    while True:
        n=int(input("donner un entier"))
        if n>=3:
            break
    return n

def remplir(n,f1):
    for i in range(n):
        while True:
            ch=input("donner une chaine")
            if len(ch)==4 and ch.isnumeric():
                break
        f1.write(ch+"\n")
        
    f1.close()
def som(ch1):
    s1=0
    for i in range(len(ch1)):
        
        s1=s1+int(ch1[i])
    return s1
def remplir1(n,f1,f2):
    f1=open("nombre.txt","r")
    for i in range(n):
        ch=f1.readline()
        s=som(ch[:len(ch)-1])
        f2.write("{} la somme de ses chiffres est {}\n".format(ch[:len(ch)-1],s))
        
    f1.close()
    f2.close()
def affiche(n,f2):
    f2=open("somme.txt","r")
    ch=f2.readline()
    while ch!="":
        print(ch[:len(ch)-1])
        ch=f2.readline()
#pp
f1=open("nombre.txt","w")
f2=open("somme.txt","w")
n=saisir()
remplir(n,f1)
remplir1(n,f1,f2)
affiche(n,f2)