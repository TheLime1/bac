''' Les algorithmes d'approximation - Calcul de la valeur approchée
de Pi (Méthode de Wallis) - Prof. Yassine Ben Salah '''

# Module permet de retourner la valeur approchée de Pi (Wallis)


def Pi_Wallis(epsilon):
    i = 1
    P1 = 1
    P2 = P1*((2 * i) / (2 * i - 1)) * ((2 * i) / (2 * i + 1))
    while (abs(2 * P2 - 2 * P1) > epsilon):
        i = i + 1
        P1 = P2
        P2 = P2 * ((2 * i) / (2 * i - 1)) * ((2 * i) / (2 * i + 1))

    return 2 * P2


# Programme Principal - Appel des modules
print('La valeur approchée de Pi =', Pi_Wallis(1e-6))
# Affichage de Pi avec 2 chiffres après la virgule
print('La valeur approchée de Pi = %.2f' % Pi_Wallis(1e-6))
# Ou bien
print(f'La valeur approchée de Pi = {Pi_Wallis(1e-6):.2f}')

# Prof. Yassine Ben Salah
