function [theta, cost] = fit(X, Y)
%% �������Իع����ʧ��������ֵ
%       [theta, cost] = fit(X, Y)

initial_theta = zeros(size(X,2), 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = ...                   ����fminunc�߼��㷨
	fminunc(@(t)(costFunction(t, X, Y)), ... ������ʧ����
    initial_theta, options); ...         �����ʼֵ�Ͳ���

end
