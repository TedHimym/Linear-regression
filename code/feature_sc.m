function X_nor = feature_sc(X)
%% ��������ź�����ݣ�������
%       X_nor = feature_sc(X)

X_nor(:, 1) = X(:, 1); % ��Ϊ��һ�����Լ���ӵ�1���Բ�������

for i = 2: size(X, 2) % ����ѭ���ֱ����ÿ��������Ӧֵ���ź�Ľ��
    X_nor(:, i) = (X(:, i) - mean(X(:, i))) ./ std(X(:, i));
end

end