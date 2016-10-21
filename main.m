%% 执行线性回归的主程序

%% ============strat===========================================
clc();
clear();

%% ============open the data===================================
Data = importdata('F:\M_L\uci_ComputerData\data\machine.data');

%% ============deal data=======================================
feature = [ones(size(Data.data, 1), 1) Data.data(:, 1:6)];
feature = RandData(feature);
%feature = feature(1:100, :);
feature = feature_sc(feature);
target = Data.data(:, 8);
X_train = feature(1:ceil(size(feature, 1)*0.7), :);
%X_cross = feature(size(X_trian, 1)+1:ceil(size(feature, 1)*0.8), :);
X_test = feature(size(X_train, 1)+1:end, :);
Y_train = target(1:ceil(size(feature, 1)*0.7), :);
%Y_cross = target(size(X_trian, 1)+1:ceil(size(feature, 1)*0.8), :);
Y_test = target(size(Y_train, 1)+1:end, :);

%% ============fit the data====================================
theta = fit(X_train, Y_train);

%% ============computer the cost===============================
J_train = costFunction(theta, X_train, Y_train);
%J_cross = costFunction(theta, X_cross, Y_cross);
J_test = costFunction(theta, X_test, Y_test);
fprintf('cross cost is %d\n', J_train);
%fprintf('cross cost is %d\n', J_cross);
fprintf('test cost is %d\n', J_test);

%% ============make prediction ================================
%Y_prediction = prediction(theta, X_prediction);%暂时没有预测数据

