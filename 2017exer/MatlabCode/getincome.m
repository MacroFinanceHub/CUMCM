function [ income ] = getincome( company , area)
%���㵱�¹�˾�����������
%   ��˾Ӫ�հ������Ʒ����롢�������롢Ѻ����ڡ�����

%�Ʒ�����
time_charge = company(1)*(1-company(4)/100)*company(6)*company(5)*area(2);
%��������
month_charge = company(1) * company(4)/100 * company(7) ;
%Ѻ������
deposit = company(1) * company(3) * company(8)/100;
%����
other = 0 ;

income = [time_charge month_charge deposit other] ;
end

