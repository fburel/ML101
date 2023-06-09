
data =  [
    6035, 3.330571665285833, 1167350;
    5934, 3.3029996629592184, 1491587,;
    5566, 3.3956162414660436, 1104485;
    5977, 3.2290446712397523, 877877;
    5459, 3.2606704524638217, 839114;
    6334, 4.294284812125039, 1185568;
    6515, 2.9930928626247124, 1046884;
];

Y = data(:,3);
X = data(:,1:2);

[X, mu, sigma] = featureNormalize(X);
disp(mu);
disp(sigma);


X = [ones(7,1), X]
W_ini = rand(1, 3);

[W, history] = gradDesc(X, Y, W_ini, 0.1);

iterations = length(history);
final_j = history(iterations);
if(final_j == Inf || iterations == 10000)
    printf("incapable d'atteindre la convergence. iteration = %d, cost = %d \n", iterations, final_j)
else 
    printf("iteration = %d, cost = %d, bias = %d, slope = %d \n", iterations, final_j, W(1), W(2));
endif

pause;

