%% ���
% ����ִ�г�ʼ�����������������
% ���õ�һ����������ɶ�����pole��
% ��ȡ���еĹؼ����ݵ�map��
% �ȶ�map���е����ݿ��Է��ָõ�һ������ϵͳ��Ӱ��
%% ���
get_m_ball_max
map = zeros(m_ball_max,6);
line_x = m_ball_max ;
% 1-�Ա��� 2-ê���� 3-���ɦ� 4-���Χ 5-ê���ϵ�����  6-�����ʶ
for magin = 1:m_ball_max
    m_ball = magin  ;
    get_right_number
    map(magin,1) = m_ball ;
    map(magin,2) = pole( 2,6 );
    map(magin,3) = pole( k_anchor+2,6 );
    map(magin,4) = pole(all,4);
    map(magin,5) = f_anchor ;
    map(magin,6) = ( map(magin,2) >= 16 ) || ( map(magin,3) <= 85 ) ;
    [joy,magin]
end
clear magin