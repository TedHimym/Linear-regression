function [J, grad] = costFunction(theta, X, Y)
%% ������ʧ���Իع����ʧ��������ֵ
%       [J, grad] = costFunction(theta, X, Y)

m = length(X);
J = ((Y-X*theta)' * (Y-X*theta)) / (2*m);
grad = ((X*theta-Y)' * X)';

end