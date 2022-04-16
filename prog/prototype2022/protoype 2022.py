from numpy import*


def transfert(f, T):
    global n
    x = f.readline()
    n = 0
    while (x != ""):
        e = {}
        e['Hex1'] = x
        e['Num'] = n
        e['Dec1'] = decimal(x)
        T[n] = e
        x = f.readline()
        n = n+1

    f.close()


def tri(T, n):
    test = False

    while test == False:
        test = False
        aux = {}
        for i in range(n-1):
            if T[i]["Dec1"] > T[i+1]["Dec1"]:
                aux = T[i]
                T[i] = T[i+1]
                T[i+1] = aux
                test = True


def decimal(x):
    x = x[:len(x)-1]
    s = 0
    p = 1
    for i in range(len(x)-1, -1, -1):

        if "0" <= x[i] <= "9":
            s = s+int(x[i])*p
        else:
            s = s+(ord(x[i])-55)*p
        p = p*16

    return s


def Generer(Nb):
    Mot = ""
    while Nb != 0:
        R = Nb % 3
        print("R=", R)
        if R == 0:
            Y = "Ma"
        elif R == 1:
            Y = "Des"
        else:
            Y = "Son"
        Mot = Y+Mot
        print("Mot=", Mot)
        Nb = Nb//3
    return Mot


def remplir(f1, T, n):
    for i in range(n):
        l = Generer(T[i]['Dec1'])
        l = l+" "+str(T[i]['Num'])
        f1.write(l+"\n")
    f1.close()


# PP
f = open("ImgHexa.txt", "r")
T = array([{}]*50)
transfert(f, T)
tri(T, n)
f1 = open("Resultat.txt", "w")
remplir(f1, T, n)
