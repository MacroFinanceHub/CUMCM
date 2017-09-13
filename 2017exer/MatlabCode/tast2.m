%% �����ⲿ����
% ���ݸ�ʽ����
% [�����ţ��û�ID������ID�����ͣ�����ʱ�䣬�����أ�������]
% ǰ�������ݸ�ʽΪ���֣�������ʱ�ַ�����ַΪgeohashת������7λ�ַ�
[data,txt] = xlsread('train.xlsx',1,'A2:G1048576') ;
% [data,txt] = xlsread('tast20.xlsx',1,'A2:G21');
addr = txt;
data(:,5:10) = 0;
clear txt
%% ��ʽת��
for k = 1:size(data,1)
    disp(k)
    [data(k,5),data(k,6)] = geohashoff(addr{k,2});%�����ؾ�γ��
    [data(k,7),data(k,8)] = geohashoff(addr{k,3});%Ŀ�ĵؾ�γ��
    data(k,9)= ...                                %λ�ƾ��루ǧ�ף�
        distance(data(k,5),data(k,6),data(k,7),data(k,8))*pi*6371/180;
    a = strfind(addr{k,1},':');
    if size(a,2) == 2
        t = addr{k,1}(a(1)-2:a(1)+5);
        data(k,10) = ...
            str2num(t(1:2))+str2num(t(4:5))/60+str2num(t(7:8))/3600;
        if  addr{k,1}(9)<=4 
            data(k,11) = addr{k,1}(9) + 3 ; % b��ʾ�ܼ�
        else
            data(k,11) = addr{k,1}(9) - 4 ;
        end
    end
end
clear t a k
%% ��������
% ǰ���������뼰����ʱ��ϳ�
% ֱ������֮ǰ�����ݴ浵����
load data.mat
%% ������
nbins = 2;
histogram(data(1:1048575,4),nbins)

%% ʱ��ֲ�
nbins = 240;
daota = 0.1 ; % ��λʱ�䣨Сʱ��
list_time = [ 0:daota:24-daota ]; % Сʱ��0-23.9��
% �����ʱ��ֲ�
h=histogram(data(1:1048575,10),nbins);
list_time = [ list_time ; ( h.Values ./ 0.4 ) ]; 
% ������ʱ��ֲ�
data0 = - data(:,10) .* (data(:,11)-1);
h=histogram(data(1:1048575,10),nbins);
list_time = [ list_time ; ( h.Values ./ 0.3 ) ]; 
% ��ĩʱ��ֲ�
data0 = data(:,10).*data(:,11);
h=histogram(data(1:1048575,10),nbins);
list_time = [ list_time ; ( h.Values ./ 0.1 ) ]; 
xlswrite('list.xlsx',list_time,1)
close all
clear nbins h
%% ʹ�þ���

