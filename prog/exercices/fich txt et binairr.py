from pickle import*
def saisir():
    while True:
        n=int(input("donner n "))
        if n<=50:
            break
    return (n)
def remplir(n,f):
    for i in range (n):
        x=int(input("donner un entier: "))
        dump(x,f)
    f.close()
def remplir2(n,f,f1,f2):
    global n1,n2
    n1,n2=0,0
    f=open("nombre.FCH","rb")
    for i in range(n):
        x=load(f)
        if x%2==0:
            dump(x,f1)
            n1=n1+1
        else:
            dump(x,f2)
            n2=n2+1
    f.close()
    f1.close()
    f2.close()
def affiche(n,f3,chemin):
    f3=open(chemin,"rb")
    for i in range(n):
        x=load(f3)
        print(x,end=" ")
    print()
    
#pp
f=open("nombre.FCH","wb")
n=saisir()
remplir(n,f)
#remplir le fichier par les nombres paires
f1=open("pair.FCH","wb")
f2=open("impaire.FCH","wb")
#remplir le fichier par les nombres impaires
remplir2(n,f,f1,f2)
#afficher le contenu de deux fichiers paires et impaires
print("le contenu du fichier paire")
affiche(n1,f1,"pair.FCH")
print("le contenu du fichier impaire")
affiche(n2,f2,"impaire.FCH")

f1.close()
f2.close()