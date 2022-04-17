def valeur(pas):
    vmax = 0
    v = 0
    x = pas
    while x <= 5:
        v = (10-x*2)*(10-x*2)*x
        if v > vmax:
            vmax = v
        x = x+1
    return vmax


################################
while True:
    x = float(input())
    if 0 < x < 1:
        break

r = valeur(x)
print(r)
