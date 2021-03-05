function [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations)
%GRADIENTDESCENT Performs gradient descent to learn theta

m = length(y); % Number of training examples
J_history = zeros(iterations, 1); % To store the previous costs

for iter = 1:iterations
   
    % Compute the new theta value using gradient step
    theta = theta - alpha/m * X' * (X*theta - y);
    
    % Save the cost J at the end of every iteration
    J_history(iter) = computeCost(X, y, theta);
    
end

end

