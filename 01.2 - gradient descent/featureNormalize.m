function [X_norm, mu, sigma] = featureNormalize(X)

m = size(X, 1);     % nombre de ligne dans X
n = size(X, 2);     % nombre de colonne à normalizer dans X
X_norm = X;         % initialisation du vecteur de réponse
mu = zeros(1, n);
sigma = zeros(1, n);
% ====================== YOUR CODE HERE ======================
% Instructions:     Pour chaque parametre vous devez calculer 
%                   les moyenne (mean) dans le vecteur mu et 
%                   et la variance (std) dans le vecteur sigma.
%                   Ensuite vous devez remplir la matrice X-norm
%                   pour qu'elle contiennent les valeurs de X
%                   apres normalisation
% Rappel:           Pour qu'un parametre i soit dis normalisé, 
%                   il faut que l'ensemble des valeurs de ce 
%                   parametres soit compris dans un intervalle
%                   proche de [-1, 1].
%                   Pour normaliser un vecteur de paramètre, on 
%                   soustrait la moyenne a chacune des valeur et 
%                   on divise par la variance (std).
% ============================================================

    % la fonction mean dispose d'une option permettant de 
    % calculer la moyenne par colonne
    mu = mean(X, 1);

    % puisque X_norm est dèja initialiser avec les valeurs
    % de X, on peut directement lui soustraires les moyennes
    % chaque colonnes (paramètres), se vera soustraire
    % sa propre moyenne
    X_norm = X_norm - mu;

    sigma = std(X_norm, 1);

    X_norm = X_norm ./ sigma;


% ============================================================

end