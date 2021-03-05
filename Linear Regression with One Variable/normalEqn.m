function theta = normalEqn(X, y)
%NORMALEQN Summary of this function goes here
%   Detailed explanation goes here

theta = pinv(X' * X) * X' * y;

end

