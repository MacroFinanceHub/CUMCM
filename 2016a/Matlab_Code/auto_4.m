%% ����
% ����ִ�г�ʼ�����������������
% 
%% ���
start_data
wrong = zeros(m_ball_max,30)
map = zeros(m_ball_max,6);

% 1-�Ա��� 2-ê���� 3-���ɦ� 4-���Χ 5-ê���ϵ�����  6-�����ʶ
for m_anchor_alone = 1:30
    m_anchor = m_anchor_alone * l_anchor ;
    m_all = m_buoy + m_pipe * k_pipe + m_sonar +  m_anchor *  k_anchor ;
    auto_2
    wrong(:,m_anchor_alone) = map(:,6) ;
end
% plot( handbag(:,1),handbag(:,2),handbag(:,1),handbag(:,3),handb