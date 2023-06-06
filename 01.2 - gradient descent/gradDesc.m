function [W, J_history] = gradDesc(X, Y, W, learning_rate)

    %Hyperparameters
    max_iterations = 10000;
    tolerance = 1e-6;

    %Initialization
    m = length(Y);
    J = 0;
    J_prev = Inf;
    iterations = 0;

    while ((abs(J - J_prev) > tolerance) && iterations < max_iterations)
        
        J_prev = J;

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
        %       Votre code ici
        %
        % cette boucle va s'execter jusqu'a ce que l'ecart entre 2 cout J calculer successivement
        % soit plus petit que le seuil de tolérance, on considerera avoir atteinds le minima a ce moment
        % si la convergence n'est pas atteinte avant d'avoir iterer 10 000 fois (max_iterations) 
        % l'algorithme s'arretera de lui même
        %
        % Votre objectif est pour chaque tour de boucle, de calculer
        % les hypotheses H correspondant au poids W
        % les residuels R correspondant a H - Y
        % Le cout J associé à ces hypotheses
        % Le vecteur de gradient G à utiliser pour chaque poids
        % mettre a jour W en fonction de G et de learning_rate

        
       




       

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        iterations = iterations + 1;

        % Sauvegarde le cout en historique    
        J_history(iterations) = J;
    end
end