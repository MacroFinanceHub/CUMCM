function [ expend ] = getexpend( company,aim)
%���㵱�¹�˾����֧������
% ��˾֧��������˰���³����á��ͷ���Ա������ά�����顢���ȶ��顢Ӫ��

%˰��
tax = sum(getincome(company)) * company(9)/100;
%�³�����
new_car = aim(1) * company(19) ;
%�ͷ���Ա
call = company(10) * company(11) ;
%����ά������
repair = company(12) * company(13) ;
%���ȶ���
move = company(14) * company(15) ;
%����Ӫ��
pr_market = sum(getincome(company)) * company(16)/100 ; %���޸�

expend = [ tax new_car call repair move pr_market ] ;
end

