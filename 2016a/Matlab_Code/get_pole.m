%% ����
% �������ϵ���ÿһ�ڵ�״̬
% ����pole�����������6��
% 1-���� 2-���� 3-�����ۼ� 4-X���� 5-Y���� 6-���Ƕȣ���ˮƽ����
%%
get_f

pole(2:2+k_anchor_under,3) = zeros(k_anchor_under+1,1) ; % ���ײ�������
pole(1,3) = f_anchor ; % �������ϵ�����
for i = 2:2+k_anchor_under
    pole(i,3) = 0 ;
    pole(i,4) = pole( i-1,4) +pole(i,1) ;
    pole(i,5) = 0 ;
    pole( i,6 ) = 0 ;
end
for i = k_anchor_under+2:all
    pole(i,3) = pole(i-1,3) + pole(i,2) ;
    aerfa = atan( pole( i,3 ) / f_hor ) ;
    pole( i,4 ) = pole(i-1,4) + cos( aerfa ) * pole(i,1) ;
    pole( i,5 ) = pole(i-1,5) + sin( aerfa ) * pole(i,1) ;
    pole( i,6 ) = rad2deg( aerfa );
end
clear aerfa