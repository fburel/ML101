# Prise en main d'Octave

Cet exercice permet de se familiariser avec les notions de base d'`Octave`, tout en abordant des aspects importants tels que la gestion des erreurs.

## Notes de cours

Les fichiers `Octave` on l'extension `.m`. Le contenu du fichier s'execute ligne par ligne.
Il se peut qu'un projet soit composer de plusieurs fichier .m, notament pour definir des sous-routines. Par convention, le fichier principal est appelé `main.m`.
Pour ajouter des commentaires, il faut les précéder d'un `%`.
Il est recommander de commencer un script par un commentaire explicant l'objet du script et par la commande `clear clc;` qui va effacer l'ecran et reinitialiser la memoire d'`Octave`.
Pour executer l'algorithme, ouvrez un terminal, rendez vous dans le dossier comportant votre fichier main.m et tapez `octave main.m`. Si vous utilisez `visual studio code`, vous pouvez egalement télécharger une extension pour le support `Octave`.

## Objectifs

- Creer un fichier `main.m`.
- Définir deux variables, a et b, et leur assigner des valeurs numériques.
- Effectuer les opérations arithmétiques suivantes :
  - Additionner a et b.
  - Soustraire b de a.
  - Multiplier a par b.
  - Diviser a par b.
- Afficher le résultat de chaque opération à l'aide de la commande `disp()`.
- Ajouter une erreur volontaire en divisant par zéro, puis afficher le message d'erreur correspondant à l'aide de la commande `error()`.
