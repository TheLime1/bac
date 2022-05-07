from pickle import*


def saisir():
    global n
    while True:
        n = int(input("n= "))
        if n < 50:
            break


def verif(ch):
    i = 0
    b = True
    while i < len(ch)-1 and b:
        if not ("0" <= ch[i] <= "9" or "A" <= ch[i].upper() <= "Z"):
            b = False
        i += 1
    return b


def remplir(f, n):
    for i in range(n):
        while True:
            ch = input("donner une chaine ")
            if verif(ch) and len(ch) <= 9:
                break
        f.write(ch+"\n")


def div11(x):
    xc = str(x)
    sp = 0
    spi = 0
    for i in range(len(xc)):
        if i % 2 == 0:
            spi = spi+int(xc[i])
        else:
            sp = sp+int(xc[i])
    if abs(sp-spi) % 11 == 0:
        return True
    else:
        return False


def nombre(x):
    ch = ""
    for i in range(len(x)):
        if "0" <= x[i] <= "9":
            ch += x[i]
            if ch == "":
                return 0
            else:
                return int(ch)


def traitement(f, f1, n):
    for i in range(n):
        e = {}
        ch = f.readline()
        x = nombre(ch)
        if x == 0:
            e["num"] = 19999999999
            e["ment"] = "nombre non decimal"
        elif div11(x) == True:
            e["num"] = x
            e["ment"] = "divisible par 11"
        else:
            e["num"] = x
            e["ment"] = "non divisible par 11"
        dump(e, f1)
    f.close()
    f1.close()


def affiche(f1):
    f1 = open("nombre.dat", "rb")
    eof = False
    while not eof:
        try:
            e = load(f1)
            print(e["num"], " ", e["ment"])
        except:
            eof = True
        f1.close()


# PP
saisir()
f = open("chaine.txt", "w")
remplir(f, n)
f.close()
f = open("chaine.txt", "r")
f1 = open("nombre.dat", "wb")
traitement(f, f1, n)
f.close()
f1.close()
affiche(f1)
