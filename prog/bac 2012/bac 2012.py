def decrypte(x):
    return chr(x)


def ConvBinDec(Bin):
    BinCh = str(Bin)
    Dec = 0
    P = 1
    for i in range(len(BinCh)-1, -1, -1):
        Dec = Dec + int(BinCh[i]) * P
        P = 2 * P
    return Dec


def traitement(f1):
    ch = "t"
    while ch != "":
        ch = f1.readline()
        ch = ch[:-1]
        n = 8
        spl = [ch[i: i + n] for i in range(0, len(ch), n)]
        for i in range(len(spl)):
            txt = decrypte(ConvBinDec(spl[i]))
            print(txt, end='')
        print("", end=' ')


# PP
f1 = open("msgcrypt.txt", "r")
traitement(f1)
f1.close()
