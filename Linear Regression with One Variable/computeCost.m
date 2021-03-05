function J = computeCost(X, y, theta)
%COMPUTECOST This function computes the cost J for the linear regression

m = length(y); % Number of training examples

J = 1/(2*m)*(X*theta - y)' * (X*theta - y);

end

