%% ���
% �����ۺ϶Ա����ݰ����������
map_1_30_p_anchor = ones(527,6,30);
for joy = 1:30
    start_date
    m_anchor_p = joy;
    get_map
    map_1_30_p_anchor(1:line_x,1:6,joy) = map(:,:) ;
    clear line_x
end
%% ��ͼ
% ����������������ͼ�����ڷ�����
% �ϲ����̹�����ִ���º�ע�Ϳ�ֱ�Ӽ��ؽ��
% load('301.mat')
map1 = zeros(5270,30);%��0
for i = 1:30
    map1(1:5270,i) = map_1_30_p_anchor(1:5270,2,i);
end
map2 = zeros(5270,30);
for i = 1:30%������
    map2(1:5270,i) = map_1_30_p_anchor(1:5270,3,i);
end
%%
% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ���� contour
[c1,h1] = contour(map1,'LevelStep',4);
clabel(c1,h1);

% ���� contour
[c2,h2] = contour(map2,'LevelStep',2.5);
clabel(c2,h2);

% ���� xlabel
xlabel({'ê���ĵ�λ��������','(kg/m)'});

% ���� ylabel
ylabel({'����������','��kg��'});

% ���� title
title({'ê����λ����&�����������Ԧ���0����������Ͱ����Ӱ��'});

box(axes1,'on');
axis(axes1,'tight');
% ������������������
set(axes1,'BoxStyle','full','Layer','top');
% ���� textbox
annotation(figure1,'textbox',...
    [0.0966325036603221 0.0391822827938671 0.032210834553441 0.061328790459966],...
    'String',{'��','���㣩'},...
    'FitBoxToText','off');