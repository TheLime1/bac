# Python program for implementation of Bubble Sort 
def triABulle(tableau): 
    n = len(tableau)
    for i in range(n-1): 
        for j in range(0, n-i-1): 
             if tableau[j] > tableau[j+1] : 
                tableau[j], tableau[j+1] = tableau[j+1], tableau[j] 
  
tableau = [11, 222, 3, 899, 24, 5, 46, 67]
print ("Tableau non trié : " + str(tableau))  
triABulle(tableau) 
print ("Tableau trié : " + str(tableau)) 