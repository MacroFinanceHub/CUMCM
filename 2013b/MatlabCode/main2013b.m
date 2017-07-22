%% ˫��
close all
clear all
clc
img_num = [1 19 0 0 0]; %��Ƭ [���� ���� ���� Ƭ�������� Ƭ��������]
img_num(3) = img_num(1) * img_num(2); %��Ƭ����
img_dir = '../1/';
%% ����ͼƬ
img = cell(1,img_num(3)); %��Ƭͼ��
for k = 1:img_num(3)
    file_name = sprintf( '%03i.bmp',k-1 );
    str = strcat([img_dir,file_name]);
    %img{k+1} = im2bw(imread(str));
    img{k}= (imread(str));
end
img_num(4:5) = size(img{1});
clear k str

%% ��������ֵ
feature = cell(4,img_num(3));%ͳһ�����������
for k = 1:img_num(3)
    feature{1,k} = (img{k}(1,:))';          %�ϲ�����
    feature{2,k} = (img{k}(img_num(4),:))'; %�²�����
    feature{3,k} = img{k}(:,1);             %�������
    feature{4,k} = img{k}(:,img_num(5));    %�Ҳ�����
end 
clear k

%% ������Ե���ƶȾ���
%����������
like_R = zeros(img_num(3));
like_C = like_R;
for m = 1:img_num(3)
for n = 1:img_num(3)
    if m==n
        like_R(m,n)=0;
    else
        like_R(m,n) =like(feature{4,m},feature{3,n});
        %ֽƬ(i)�Ҳ� �� ֽƬ(j)��� �����ƶȾ���
        like_C(m,n) =like(feature{2,m},feature{1,n});
        %ֽƬ(i)�²� �� ֽƬ(j)�ϲ� �����ƶȾ���
    end
end
end
clear m n

%% ����ֵ����
%��δ�г�������֤������
%% ������
% img_all = img_puz(img,img_num,order);
% imshow(img_all)
%imwrite(img_all,'img_all.png')