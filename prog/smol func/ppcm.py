
# Calcul arithmétique - Divisiblité par 3 - Prof. Yassine Ben Salah

# Module permet de saisir un entier positif Nb
def Saisir():
    valide = False
    while valide == False:
        Nb = int(input('Saisir Nb : '))
        valide = (Nb >= 0)
    return Nb

# Module permet de de vérifier si un entier Nb est divisible par 3


def DIV3(Nb):
    Ch = str(Nb)
    Som = 0
    for i in range(len(Ch)):
        c = int(Ch[i])
        Som = Som + c

    return Som % 3 == 0


# Programme principal : Appel des modules
Nb = Saisir()
if DIV3(Nb):
    print(Nb, 'est divisible par 3')
else:
    print(Nb, 'est non divisible par 3')
