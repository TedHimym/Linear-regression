function [J, grad] = costFunction(theta, X, Y)
%% 计算损失线性回归的损失并返回其值
%       [J, grad] = costFunction(theta, X, Y)

m = length(X);
J = ((Y-X*theta)' * (Y-X*theta)) / (2*m);
grad = ((X*theta-Y)' * X)';

end