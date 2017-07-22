function [ retu ] = like( a,b )
% �����������ʼ��㺯��
% retu a b ����������
% �˴���ʾ��ϸ˵��
    less = 0 ; % ռ�ձ�������ֵ
    in_type = 255 ;% ����ֵ��Χ
    long = size(a,1);
    if long ~= size(b,1) % �����������ĳ���Ӧ���ȳ�
        retu = 0;
        disp('Error:Fun like,different long size.')
    else
        % ͼ�����uint8��ʽ��ֵΪ0-255
        % ����ֵ255Ϊ����ɫ���൱�ڿ�λ������Ϊ����Ϣ
        % a_d b_d ʵ�����ǰ�����������ֵ��
        a_d = (in_type-a) ./ (in_type-a+eps); 
        b_d = (in_type-b) ./ (in_type-b+eps);
        c_d = uint8( a_d | b_d );
        a_d_sum = sum(a_d);
        b_d_sum = sum(b_d);
        c_d_sum = sum(c_d);
        % duty������������ռ�ձ�
        a_duty = a_d_sum / long ;
        b_duty = b_d_sum / long ;
        if (a_duty<=less) || (b_duty<=less)
            retu = 0;
        else   
            retu = 1 - sum(c_d.*((a-b)+(b-a)))/c_d_sum/in_type ;
        end  
    end
end

