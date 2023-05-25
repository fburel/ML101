% Définition de la matrice A
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% Calcul de la transposée B
B = A';
size(B)

% Définition du vecteur colonne v
v = [2; 4; 6];

% Multiplication de A par v
w = A * v;

% Ajout de v à chaque colonne de A pour obtenir C
C = A + v;

% Calcul de la trace de A
trA = trace(A);

% Affichage des résultats
disp("Matrice A :");
disp(A);
disp("Matrice B :");
disp(B);
disp("Vecteur v :");
disp(v);
disp("Vecteur w :");
disp(w);
disp("Matrice C :");
disp(C);
disp("Trace de A :");
disp(trA);