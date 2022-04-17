def chercher(pas):
    x=pas
    a=-2/3*x*x+2*x
    while a<1:
        a=-2/3*x*x+2*x
        x=x+pas
    return x
    

while True:
    x = float(input())
    if 0 < x < 1:
        break
resultat=chercher(x)
print(resultat)

#a=-2/3*x*x+2*x
    