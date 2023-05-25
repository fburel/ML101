%%
%% DEBUT D'EXECUTION DE L'ALGORITHME
%%

%% clear la memoire
clc; clear;

%% creer une matrice avec les données
data = [
    155.850, 1551;
    93.246, 972;
    36.639, 564;
    34.586, 353;
    ];

plot(data(:,1), data(:,2), "x red");
grid on;
xlabel("nb habitant en millier");
ylabel("Chiffre d'affaire (k€)")
pause;


%% test avec les valeur 131.86, 9.0926.
printf("essai avec [131.86, 9.0926] \n");
params = [131.86, 9.0926]; % on met b en premiers
H =  regline(data(:,1), params);
C = cost(data(:,2), H);
printf("cout de la regression avec 131.86, 9.0926 : %d", C);


%% affichage de la courbe de correlation Y / H
plot(data(:,2) / 100 , H / 100, "x blue", 0:20, 0:20, "- red");
grid on;
xlabel("CA réel");
ylabel("CA hypothese");
axis([0, 20, 0, 20]);
title("prediction vs realité");
pause;

%% affichage de la courbe 3d cost = f(a, b);
A = 6:0.02:10;
B = 100:1:300;
[B, A] = meshgrid(B, A);
T_all = [B(:)'; A(:)']';

X = [ones(size(data, 1), 1), data(:, 1)]; % matrice X pour la régression linéaire
Y = data(:, 2);                           % vecteur Y pour la régression linéaire

C = sum(((Y - X * T_all').^2), 1) / (2 * length(Y)); % calcul vectorisé du coût
C = reshape(C, size(B));                              % redimensionner C en une matrice

plot3(A, B, C);
xlabel("A");
ylabel("B")
zlabel("Cost")
title ("cost = f(A,B)");
pause;


