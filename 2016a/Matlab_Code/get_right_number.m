%% ���
% ����������ȷ������̶�ê����µĸ��㾲̬����
% �������յ�pole�����������6��
% 1-���� 2-���� 3-�����ۼ� 4-X���� 5-Y���� 6-���Ƕȣ���ˮƽ����
% ���ݼ���õ������λ�ã�΢�����ҵ������ֵ
%% ��ʼ������
get_m_ball_max
f_anchor = 0 ;      % ê�����ṩ������  ����
k_anchor_under = 0 ;% ����ê������      ����
all = k_pipe + k_anchor + 2 ; %�ܽ���
pole = zeros(all,6);

% ��ʼ��ê��
for i = 2 : k_anchor + 1
    pole( i,1 ) = l_anchor ;
    pole( i,2 ) = g * m_anchor ;
end
% ���ظ���
pole( k_anchor+1,2 ) = pole( k_anchor+1,2 ) + g * m_ball ;
% ��ʼ������
pole( k_anchor+2,1 ) = l_sonar ;
pole( k_anchor+2,2 ) = m_sonar * g ;
% ��ʼ������
for i = k_anchor+3 : all
    pole( i,1 ) = l_pipe ; 
    pole( i,2 ) = g * m_pipe ;
end
%% Ԥ����
get_pole
% pole(all,4:5)                % ���Թ۲��
% plot( pole(:,4),pole(:,5) )  % ���Թ۲��
%% ��ȷ����
if pole(all,5) + h_sea == depth
    disp('Right only ones')
else
    if pole(all,5) + h_sea > depth
        while pole(all,5) + h_sea > depth
            k_anchor_under = k_anchor_under + 1 ;
            get_pole
            if k_anchor_under == k_anchor
                disp('WRONG anchor under more')
                break;
            end
        end
    else
        while pole(all,5) + h_sea < depth
            f_anchor = f_anchor + 1000 ; 
            get_pole
        end
        f_anchor = f_anchor - 1000 ;
        get_pole
        while pole(all,5) + h_sea < depth
            f_anchor = f_anchor + 100 ; 
            get_pole
        end
        f_anchor = f_anchor - 100 ;
        get_pole
        while pole(all,5) + h_sea < depth
            f_anchor = f_anchor + 10 ; 
            get_pole
        end
        f_anchor = f_anchor - 10 ;
        get_pole
        while pole(all,5) + h_sea < depth
            f_anchor = f_anchor + 1 ; 
            get_pole
        end
    end
end
% pole(all,4:5)               % ���Թ۲��
% plot( pole(:,4),pole(:,5) ) % ���Թ۲��