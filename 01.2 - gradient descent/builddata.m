clear; clc;
scale = 100;
error = (rand(100, 1) * .2 - .5) * scale;
X = rand(100, 1) * scale;
Y = [ones(100,1), X] * [3, 5]' + error;

file = [X, Y];

save data.mat file;