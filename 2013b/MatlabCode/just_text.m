clc
R0 = like_R ;
R1 = ones(img_num(3));
%% ����1
order = [9 15 13 16 4 11 3 17 2 5 6 10 14 19 12 8 18 1 7];
%% ����2
order = [4 7 3 8 16 19 12 1 6 2 10 14 11 9 13 15 18 17 5];
%% �Ż�������
%����ǽ�������ת���ɶ�ֵ
[x,y]= find( R0==max(max(R0)) ,1 );
Rs = [max(max(R0)) x y] ;
R1(x,:)=0;R1(:,y)=0;
R0 = R0.* R1;
R1(x,y)=-1;
clear x y
retu = [ Rs max(max(R0)) ]
img_text(retu(2),retu(3),img)
