function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


% gradient descent one-liner:
% theta - (alpha / m) - nothing special here
% X * theta - y will compute the first part of the sum, which is a vector (each element corresponding to a row in the input matrix)
% this vector is then transposed and multiplied by X, which will give a row vactor
% in the resulting row vector, every cell is a sum-product (dot product) of the whole vector and an input column, giving the sum in the formula for gradient descent

theta = theta .- ((alpha / m) .* (X * theta - y)' * X)';




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
