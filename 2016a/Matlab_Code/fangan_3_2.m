%% ����������۵���֤
% ������ê������ԶС��ê���ܳ��ȣ�
% ��С�ڰٷ�֮һ��
% ���ı�ê���ĵ��ڳ��ȣ�
% ��ϵͳӰ���С
close all
clear all
clear all
clc
%% �����һ�����
start_data
v_wind = 24 ;
m_anchor_p = 7;
k_anchor = 210 ;
l_anchor = 0.105;
get_right_number
text1 = [ pole( 2,6 ),pole( k_anchor+2,6 ),pole(all,4) ] 
% 1-ê���� 2-���ɦ� 3-���Χ
%% ����ڶ������
start_data
v_wind = 24 ;
m_anchor_p = 7;
k_anchor = 105 ;
l_anchor = 0.210;
get_right_number
text2 = [ pole( 2,6 ),pole( k_anchor+2,6 ),pole(all,4) ] 
% 1-ê���� 2-���ɦ� 3-���Χ
%% ����
text0 = abs( text1 - text2 ) % ��ֵ
% �������
text0 = text0 ./ [ 90,90,sqrt( (l_anchor*k_anchor+l_sonar+l_pipe*k_pipe+l_buoy)^2 - (depth)^2 ) ] 