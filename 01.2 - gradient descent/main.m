%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% objectif :   Nous recevons un jeu de données contenant un
%               paramètre X et une verité Y pour 100 
%               enregistrements. L'objectif de l'exercice
%               est de trouver la correlation entre X et y
%               en utilisant la technique du gradient descent

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Partie 1 : Chargement des données
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Ces lignes chargent les données du fichier data.mat 
%   et sépare les paramètre dans un vecteur vertical X
%   et la vérité dans un vecteur vertical Y.
%   apres le chargement les points (x,y) sont placé
%   sur une grille.

%% reinitialise octave
clear; clc; format short g;

% charge X et Y
load data.mat; 
X = file(:,1);
Y = file(:,2);

% place les points sur une grille
plot(X, Y, "x b");
ylabel("Y");
xlabel("X");


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Partie 2 : Gradient descent
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Dans cette partie, nous allons definir un vecteur 
%   de poids aletoire, puis commencer la descente.
%   l'objectif est d'implementer les algorithme 
%   permettant d'atteindre la convergence.

W_ini = rand(1, 2); %%  Initialisation des poids
learning_rate = 0.01;

%% Completer le fichier featureNormalize.m pour faire fonctionner cette méthode
[X, mu, sigma ]= featureNormalize(X);
printf("Apres normalisation la moyenne est %d et le sigma est %d \n", mu(1), sigma(1));


%%  Ajout de la colonne bias
X = [ones(100, 1), X]; 

%% Completer le fichier gradDesc.m pour faire fonctionner cette méthode
%% la fonction gradDesc fait varier les poids par itération
%% pour converger vers le cout le plus  bas
%% Un learning_rate non adapté peut empecher la convergence
[W, history] = gradDesc(X, Y, W_ini, learning_rate);

iterations = length(history);
final_j = history(iterations);
if(final_j == Inf || iterations == 10000)
    printf("incapable d'atteindre la convergence. iteration = %d, cost = %d \n", iterations, final_j)
else 
    printf("iteration = %d, cost = %d, bias = %d, slope = %d \n", iterations, final_j, W(1), W(2));
endif

pause;

