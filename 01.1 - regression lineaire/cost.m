function [J] = computeCost(H, Y)

    m = length(Y); % initialiser m
    J = sum((H - Y).^2) / (2 * m);
end
