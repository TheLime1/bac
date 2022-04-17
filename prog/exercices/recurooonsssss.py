from numpy import*
from random import*
def max(n,t,i,m):
    if n-1==i:
        return m
    else :
        if t[i]>m:
            m=t[i]
        return max(n,t,i+1,m)


n=int(input("ecrire n: "))
t=array([int]*n)
for i in range(n):
    a=randint(1,50)
    t[i]=a
print(t)
print(max(n,t,0,1))
