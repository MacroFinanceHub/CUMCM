%% ����
% ����������������������������
%% ������
m_anchor = m_anchor_p * l_anchor ; % ����λ����ת��Ϊ��������
m_all = m_buoy + m_pipe * k_pipe + m_sonar +  m_anchor *  k_anchor ;
m_ball_max =  fix( ( density_sea * ( d_buoy / 2 )^2 * pi * l_buoy - m_all ) ) ;
