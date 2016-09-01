data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

alpha = 0.3;
num_iters = 100;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
theta
% house
house = [1650;3];
house = ((house .- mu) ./ sigma)'
price = [1 house] * theta

theta = normalEqn(X, y)
price = [1 house] * theta