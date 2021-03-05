%% Load the dataset
datatable = readtable('train.csv');
dataset = datatable{:,:};

% Get the features
X = dataset(:,1);
y = dataset(:,2);

%% Plot the data to check
plot(X, y, 'rx', 'MarkerSize', 5);
hold on;

%% Gradient Descent

m = length(y); % Number of training examples
X = [ones(m,1), X]; % Add a column of ones to X for theta_0
theta = zeros(2,1); % Initialize fitting parameters theta with zeros
iterations = 1500;
alpha = 1e-5; % Set the initial learning rate

%% Run gradient descent
[theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);
plot(X(:,2), X*theta, '-b', 'LineWidth', 2); % Plot the fitted line

%% Run normal equation
theta = normalEqn(X,y);
plot(X(:,2), X*theta, '-g', 'LineWidth', 2); % Plot the fitted line

%% Plot settings
legend('Training data', 'Gradient Descent', 'Normal Eqn');
hold off;


