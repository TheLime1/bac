from pickle import*


def saisir():
    global e
    while True:
        e = float(input("saisir le nombre d'epsilon "))
        if 0.001 <= e <= 0.01:
            break


def remplir(f):
    global n
    n = 1
    while (abs(trapeze(n)-9) > e) or (abs(rectangle(n)-9) > e):
        x = {}
        x["nb"] = n
        x["rect"] = rectangle(n)
        x["trap"] = trapeze(n)
        dump(x, f)
        n = n+1
        if(abs(trapeze(n)-9 < e)):
            print("methode de trapeze avec", n,
                  "subdivision et Air=", trapeze(n))
        else:
            print("rectangle avec", n, "subdivision et Air=", rectangle(n))
    f.close()


def f1(x):
    return x*x


def trapeze(n):
    h = (3)/n
    x = 0
    s = (f1(x)+f1(x+h))/2
    for k in range(1, n):
        x = x+h
        s = s+(f1(x)+f1(x+h))/2
    return s*h


def rectangle(n):
    s = 0
    x = 0
    h = 3/n
    x = x+h/2
    for k in range(1, n):
        s = s+f1(x)
        x = x+h
    return s*h


def affichage():
    f = open("calcul.dat", "rb")
    for i in range(n-1):
        x = load(f)
    print(x["nb"], ":", x["rect"], ":", x["trap"])
    f.close()


# pp
saisir()
f = open("calcul.dat", "wb")
remplir(f)
affichage()
