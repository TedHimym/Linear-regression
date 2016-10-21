function data_m = RandData(data)
%% 将数据打乱并返回
%       data_m = RandData(data)

randIndex = randperm(size(data, 1)); % 生成打乱数据的随机索引
data_m = data(randIndex, :); % 将随机索引对应的数据按顺序放在
                             % 新数组中
                            
% S = zeros(size(data, 1));
% data_m = zeros(size(data));
% for i = 1: size(data)
%     while true
%         temp = randi(size(data, 1));
%         if sum(S == temp)
%             continue;
%         else
%             break;
%         end
%     end
%     S(i) = temp;
%     data_m(i, :) = data(temp, :);

end