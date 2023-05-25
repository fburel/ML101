function [H] = regline(X, T)

    m = size(X, 1);          % nombre d'exemples
    X = [ones(m, 1), X];     % ajouter une colonne de 1 à X
    H = X * T';               % utiliser T transposé pour la multiplication

end