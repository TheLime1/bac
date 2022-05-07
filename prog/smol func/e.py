''' Les algorithmes d'approximation - Calcul de la valeur approchée
de e  - Prof. Yassine Ben Salah '''

# Module permet de retourner la valeur approchée de e


def Val_e(epsilon):
    i = 1
    S1 = 1
    S2 = S1 + (1 / Fact(i))
    while (abs(S2 - S1) > epsilon):
        i = i + 1
        S1 = S2
        S2 = S2 + (1 / Fact(i))

    return S2

# Module permet de retourner la factorielle de n (traitement récursif)


def Fact(n):
    if n == 0:
        return 1
    else:
        return n * Fact(n-1)


# Programme Principal - Appel des modules
print('La valeur approchée de e =', Val_e(1e-4))
# Affichage de e avec 2 chiffres après la virgule
print('La valeur approchée de e = %.2f ' % Val_e(1e-4))
# Ou bien
print(f'La valeur approchée de e = {Val_e(1e-4):.2f}')

# Prof. Yassine Ben Salah
