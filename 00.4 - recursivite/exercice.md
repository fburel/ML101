# Creation de fonction

Cet exercice permet de se familiariser avec des notions plus avancées en Octave, telles que les paramètres facultatifs, les fonctions récursives ou la maniere de découper le code en plusieurs fichiers.

## Objectifs

- Creer un fichier `main.m`.
- Créer une fonction `fibonacci` récursive qui calcule le n-ième nombre de Fibonacci.
- La fonction prend en entrée un entier n et un paramètre logique supplementaire `verbose` avec la valeur par défaut `false`.
  - Si verbose est `true`, afficher "Calcul de fib(n)" (remplacer n par la valeur numerique de n) sinon ne rien afficher.
  - Si n est égal à 0 ou 1, retourner n.
  - Sinon, retourner la somme des deux nombres de Fibonacci précédents : `fibonacci(n-1) + fibonacci(n-2)`.
- Tester la fonction en appelant celle-ci avec différentes valeurs pour n, et afficher le résultat.
- creer un nouveau fichier `fibbonacci.m`
- sortir le code de la fonction fibbonacci dans le fichier `fibbonacci.m`. Tester que tout fonctionne correctment.
