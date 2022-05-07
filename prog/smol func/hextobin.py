''' Calcul arithmétique - Conversion d'un nombre hexadécimal (Base 16)
en nombre binaire (Base 2) - Prof. Yassine Ben Salah '''

# Module permet de saisir un nombre hexadécimal


def Saisir():
    Valide = False
    while Valide == False:
        Hex = input('Saisir un nombre hexadécimal : ')
        Valide = Verif(Hex)
    return Hex

# Module permet de vérifier si Hex est un nombre hexadécimal


def Verif(Hex):
    i = 0
    ok = True
    while (ok == True) and (i <= len(Hex)-1):
        if not ('0' <= Hex[i] <= '9' or 'A' <= Hex[i].upper() <= 'F'):
            ok = False
        else:
            i = i+1
    return ok

# Module permet de convertir un nombre hexadécimal en nombre binaire


def ConvHexBin(Hex):
    Bin = ""
       for i in range(len(Hex)-1, -1, -1):
            if "0" <= Hex[i] <= "9":
                X = int(Hex[i])
            else:
                X = ord(Hex[i].upper()) - 55
            Bin = ConvHBin(X) + Bin
        while Bin[0] == "0":
            Bin = Bin[1:]
        return int(Bin)


def ConvHBin(X):
    Bin4 = ""
    while X != 0:
        R = X % 2
        Bin4 = str(R) + Bin4
        X = X // 2
        while len(Bin4) != 4:
        Bin4 = "0" + Bin4
    return Bin4


# Programme principal : Appel des modules
Hex = Saisir()
print(Hex, '(Base 16) =', ConvHexBin(Hex), '(Base 2)')

# Prof. Yassine Ben Salah
