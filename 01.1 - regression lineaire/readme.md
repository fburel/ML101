# Regression lineaire

Cet exercice est le commencement de l'implementation des algorithmes de machine learning. Des notions basiques sont vu comme la fonction cout, ou le calcul des hypotheses.

## objectifs

- Dans ce dossier, creer un fichier `main.m`.

### partie 1 : visualisation des données

- Creer une matrice avec les valeur suivantes, correspondant respectivement au nombre d'habitant dans la ville et au C.A. associé :
  155850 || 1550993,42
  93246 || 971231,17  
  36639 || 563998,66  
  34586 || 352308,62

- utiliser la fonction plot(x, y) pour afficher ces valeurs sous forme de points dans un graphique avec la population en abscisse et le CA en ordonnée.

### calcul du cout

- dans un fichier `cost.m` creer une fonction `cost` prenant en parametre un vecteur vertical de valeur `Y` et un vecteur vertical de même dimension `H`
- implementer la fonction `cost` pour qu'elle retourne le coût des hypothese H par rapport a Y celon la formule vue en cours. (astuce : commencer par calculer dans un nouveau vecteur la difference H-Y)
- Tester la fonction en lui passant la 2e colonne de data en Y et la premiere en H, cout devrait etre environ 3.8727e+05. Si on passe en X la 2e colonne, le cout est de 0 (zéros).

### calcul des hypotheses

- dans un fichier `regline.m` creer une fonction `regline` prenant en parametre un vecteur de parametre `X` et un vecteur horizontal de parametres `T`
- implementer la fonction `regline` de sorte qu'elle calcule, pour chaque rangée de `X`, la somme `h = t0 + t1.x1... + tN.xN` où `t0`, `t1`...,`tN` sont les valeurs de N. et `x1` `x2`... `xN` les colonnes de `X`.
- tester la fonction en lui passant la premiere colonne de data en parametre X et [2, 10] en parametre T.
- modifier le fichier `main.m` pour calculer la regression lineaire sur le jeu d'entrainement avec les parametres [9.0926, 131.86]. Le cout doit être environ 2321.
- placer sur un graph les points pour chaque enregistrements avec en abscisse le C.A. réel (Y), et en ordonnées le C.A. calculé par la regression (H). 

### visualisation 3D

- Creer un vecteur A contenant les valeurs entre 6 et 10 par pas de 0,02 (200 valeurs), un vecteur B contenant les valeurs entre 100 et 300 par pas de 1. 
- combiner les 2 vecteurs en une matrix contenant, en rangée, toutes les combinaisons possible pour A et B (40 000 rangés) (indice : utiliser la fonction `meshgrid`)
- pour chacunes des combinaisons A et B, calculer dans un vecteur C les hypotheses associé et le cout associé.
- utiliser la fonction plot3 pour representer en 3D la variation du cout C en fonction des valeurs de A et B. (x = A, y = B, z = C)
