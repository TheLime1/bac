from numpy import*
"saisir la dimension du Tableau"

def saisir():
    while True:
        n=int(input("donner la dimension:  "))
        if n>=2 & n<=30:
            break
    return n
    
"remplir un enregistrement note qui comprend DC et DS"
def saisi_note(d):
    while True:
        d['DC']=float(input('Donner la note de contrôle '))
        if d['DC']>=0 and d['DC']<=20:
            break
    while True:
        d['DS']=float(input('donner la note de synthèse '))
        if 0<=d['DS']<=20:
            break
     

"remplir le Tableau d'enregistrement"
def remplir(n,t):
    for i in range(n):
        t[i]={}
        t[i]['note']={} 
        t[i]['nom_Pre']=input("saisir le nom et le prènom de l'élève  ")
        saisi_note(t[i]['note'])
        t[i]['moy']=(t[i]['note']['DC']+t[i]['note']['DS']*2)/3
        
        
    
"afficher le Tableau d'enregistrement pour les élèves qui sont admis"

def afficher(n,t):
    print("Le Nom & Le Prènom des élèves qui sont admis: ")
    for i in range(n):
        if t[i]['moy']>=10:
            print("{:10s} {:.2f} ".format(t[i]['nom_Pre'],t[i]['moy']))
 
n=saisir()
t=array([None]*n)
remplir(n,t)
afficher(n,t)
