%% ����
% ���ݵ����µ���������ȷ�������״̬���������ܵ��ĺ���������
% ����ֵΪ��������
% ���ֵΪˮƽ������ f_hor
% get_f��������ʱ�����ȵ��ñ�����
%% ����
m_all =  m_buoy + m_pipe * k_pipe + m_sonar + m_ball + m_anchor * ( k_anchor - k_anchor_under ) + f_anchor / g ;
h_sea = m_all / density_sea / ( pi * ( d_buoy / 2 ) ^ 2 ) ;
s_wind =  ( l_buoy - h_sea ) * d_buoy ;
s_sea = h_sea * d_buoy ;
f_wind = v_wind ^ 2 * s_wind * 0.625 ;
f_sea =  v_sea ^ 2 * s_sea * 374 ;
f_hor = f_wind + f_sea ;
clear m_all
clear s_wind
clear s_sea
clear f_wind
clear f_sea