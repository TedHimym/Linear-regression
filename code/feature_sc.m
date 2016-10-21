function X_nor = feature_sc(X)
%% 计算出缩放后的数据，并返回
%       X_nor = feature_sc(X)

X_nor(:, 1) = X(:, 1); % 因为第一列是自己添加的1所以不用缩放

for i = 2: size(X, 2) % 进入循环分别计算每个特征对应值缩放后的结果
    X_nor(:, i) = (X(:, i) - mean(X(:, i))) ./ std(X(:, i));
end

end