''' Calcul arithmétique - Conversion d'un nombre binaire (Base 2) en
nombre décimal (Base 10)  - Prof. Yassine Ben Salah '''

# Module permet de saisir un nombre binaire


def Saisir():
    Valide = False
    while Valide == False:
        Bin = int(input('Saisir un nombre binaire : '))
        Valide = Verif(Bin)
    return Bin

# Module permet de vérifier si Bin est un nombre binaire


def Verif(Bin):
    ch = str(Bin)
    i = 0
    ok = True
    while (ok == True) and (i <= len(ch)-1):
        if not (ch[i] in ['0', '1']):
            ok = False
        else:
            i = i+1
    return ok

# Module permet de convertir un nombre binaire en nombre décimal


def ConvBinDec(Bin):
    BinCh = str(Bin)
    Dec = 0
    P = 1
    for i in range(len(BinCh)-1, -1, -1):
        Dec = Dec + int(BinCh[i]) * P
        P = 2 * P
    return Dec


# Programme principal : Appel des modules
Bin = Saisir()
print(Bin, '(Base 2) =', ConvBinDec(Bin), '(Base 10)')

# Prof. Yassine Ben Salah
