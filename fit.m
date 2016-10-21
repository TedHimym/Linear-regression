function [theta, cost] = fit(X, Y)
%% 计算线性回归的损失并返回其值
%       [theta, cost] = fit(X, Y)

initial_theta = zeros(size(X,2), 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = ...                   调用fminunc高级算法
	fminunc(@(t)(costFunction(t, X, Y)), ... 传入损失函数
    initial_theta, options); ...         传入初始值和操作

end
