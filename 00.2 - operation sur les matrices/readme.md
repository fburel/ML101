# Opérations sur les matrice

Cet exercice permet de se familiariser avec les opérations de base sur les matrices et les vecteurs en Octave, tout en abordant des notions plus avancées telles que la multiplication matrice-vecteur et la trace d'une matrice.

## Notes de cours

### vecteur vs matrices

Un vecteur est une serie de nombres. Ces nombres peuvent etre soit en rangées ou soit en colonnes. En ce sens, un vecteur vertical de `n` éléments est une matrice de taille `n x 1`, alors qu'un vecteur horizontal est une matrice de taille `1 x n`.

### Creation de matrices ou de vecteurs

Pour déclarer explicitement un vecteur horizontal il faut séparer vos valeur avec une `,` `[6, 9, 2]` alors qu'il faudra utiliser un `;` pour un vecteur vertical `[6; 9; 2]`

Pour déclarer explicitement une matrix, enumérez les valeur dans le sens de lecture en séparant les données d'une même rangée d'une virgule et en séparant les rangées d'un ";""

exemple :

```octave
    vecteurH = [1, 1, 2, 3, 5];
    vecteurV = [1; -1; 2; -3; -5];
    matrix = [1, 2, 3 ; 4, 5, 6 ; 7, 8, 9];
```

De nombreuses fonctions octave permettent de creer des vecteurs est des matrices, ainsi `zeros(m, n)`, `ones(m, n)` ou `rand(n,m)`, retourne des matrices de taille `m x n` (remplis de zéros, de 1, ou de nombre aleatoire). De meme `1:5` retourne le vecteur horizontal `[1, 2, 3, 4, 5]` alors que 0:2:10 retourne `[0, 2, 4, 6, 8, 10]` (de 0 à 10 par _pas_ de 2).

### operation sur les matrices

Les operations d'addition, de soustraction de multiplications par un nombre scalaire sont possible. Dans ce cas, tout les termes de la matrice sont affectés

```octave
    A = [1, -1, 2, -3, -5];
    A * 2;
    % A vaut maintenant [2, -2, 4, -6, -10]
```

Les additions est soustractions de 2 matrices sont possible si celles-ci on la même dimensions. Dans ce cas, l'operation a lieu terme a termes:

```octave
    A = [1, -1, 2, -3, -5];
    B = [1; 2; 3; 4; 5];

    A - B %% ERREUR car les 2 matrices n'ont pas la meme dimension. A est 1 x 5 alors que B est 5 x 1

    B = B' % transposition, B est maintenant de dimension 1 x 5
    A - B; % possible maintenant que B a été transposé
    % A vaut maintenant [0, -3, -1, -7, -10]
```

### multiplication de matrices

Il ne faut pas confondre la multiplication terme à terme de 2 matrice et le produit matriciel.
Pour effectuer une multiplication termes à terme de 2 matrice de même dimension, il faut utiliser l'operateur `.*`. exemple:

```
    A = [2, 4];
    B = [5, 10];
    C = A *. B; % C vaut [10, 40];
```

Le produit matriciel est une operation changeant les dimensions de la matrice. Le produit matriciel est obtenu avec l'operateur `*`.
**Pour que 2 matrices puissent etre multipliée, le nombre de colonnes de la 1ere matrice doit etre égale au nombre de rangées de la 2eme matrice**. Le resultat aura autant de rangée que la 1ere matrice, et autant de colonnes que la 2eme. Si une matrice de taille (m, n) et multipliée par une matrice de taille (n, p), le produit matriciel sera un matrice de taille (m,p).

exemple :

```octave
    A = [1, -1, 2, -3, -5]; % (1 x 5)
    B = [1; 2; 3; 4; 5]; % (5 x 1)

    C = A * A;  % ERROR

    P = A * B   %% P = -32; (1 x 5) . (5 x 1) = (1 x 1)
    P = B * A   %% dimension de P: (5 x 1) . (1 x 5) = (5 x 5)

```

## Objectifs

- Creer un fichier `main.m`.
- Définir une matrice `A` de dimensions `3x3` et lui assigner des valeurs numériques.
- Calculer la transposée de `A` et la stocker dans une variable `B`.
- Définir un vecteur vertical `V` de taille 3 et lui assigner des valeurs numériques de 1 à 5.
- Multiplier la matrice `A` par le vecteur `V` pour obtenir un nouveau vecteur `W`, et afficher ce vecteur.
- Ajouter le vecteur `V` à chaque colonne de la matrice `A`, puis stocker le résultat dans une nouvelle matrice `C`, et afficher cette matrice.
- Calculer la trace de la matrice `A`, c'est-à-dire la somme des éléments de la diagonale principale, et afficher ce résultat.
- Creer un vecteur vertical `E` avec les nombres de 10 à 50 par pas de 10.
- Calculer la somme des produits des valeur de V par les valeur de E (1 x 10 + 2 x 20...)
