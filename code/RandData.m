function data_m = RandData(data)
%% �����ݴ��Ҳ�����
%       data_m = RandData(data)

randIndex = randperm(size(data, 1)); % ���ɴ������ݵ��������
data_m = data(randIndex, :); % �����������Ӧ�����ݰ�˳�����
                             % ��������
                            
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