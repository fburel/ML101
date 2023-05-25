% Initialisation
clear; clc; 

% Définition des variables a et b
a = 5;
b = 2;

% Opérations arithmétiques
c = a + b;
d = a - b;
e = a * b;

% Division par zéro volontaire (erreur)
f = a / 0;

% Affichage des résultats
disp(c);
disp(d);
disp(e);
disp(f);

% Gestion de l'erreur
if (isinf(f) || isnan(f))
   error("Erreur de division par zéro");
end