def binair(ch):
    s = 0
    p = 1
    j = len(ch)-1
    for i in range(len(ch)):
        k = int(ch[j])
        j = j-1
        s = s+p*k
        p = p*2
    return s


def cry(ch):
    i = 0
    res = ""
    while (i < len(ch)):
        k = binair(ch[i:i+8])
        i = i+8
        res = res+chr(k)
    return res


def cryptage(f):
    res = ""
    ch = f.readline()
    k = cry(ch[0:len(ch)-1])
    res = res+k+" "
    while not (ch == ""):
        ch = f.readline()
        k = cry(ch[0:len(ch)-1])
        res = res+k+" "
    print(res)
    f.close()


f = open("mscrypt.txt", "r")
cryptage(f)
