import pickle
#----------------
c=int(1)
while True:
    n=int(input('nb de chaines : '))
    if 2<=n<=10:
        break
#---------------
f=open('eleve.dat', 'wb')
for l in range(n):
    while True:
        print("ecrire la chaine N",c,)
        str1=str(input())
        str2="0"
        x=str2+str1
        #print(x)
        if len(x)<=8 and x.isnumeric():
            pickle.dump(x,f)
            break
    c=c+1
f.close()
#-------------------
total = 0
with open('eleve.dat', 'r') as inp, open('somme.dat', 'w') as outp:
    for line in inp:
        try:
            num = float(line)
            total += num
            outp.write(line)
        except ValueError:
            print('{} is not a number!'.format(line))
print('Total of all numbers: {}'.format(total))
close()
#---------------------------------------
