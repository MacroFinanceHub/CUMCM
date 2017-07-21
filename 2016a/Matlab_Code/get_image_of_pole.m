%% ϵ��ϵͳģ��ͼ�Զ�����
% ��Ҫ�ṩ�Ѿ����ɵ�pole����
fubiao_x = pole(all,4) ;  % ��ȡ�ؼ���
fubiao_y = pole(all,5) ;
sonar_x = pole(all-k_pipe-1,4) ;
sonar_y = pole(all-k_pipe-1,5) ;
the_x = fix(fubiao_x); % ȡ��
the_y = fix(fubiao_y);
% ������Ҫͼ��
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'on');
plot( pole(:,4),pole(:,5),'Color', 'k' )
box(axes1,'on');
xlim(axes1,[0 the_x+2]);
ylim(axes1,[0 the_y+3]);
set(axes1,'XGrid','on','XTick',[0:2:the_x+2],'YGrid','on','YTick',[0:2:the_y+3]);
plot(0:the_x-1,depth*ones(1,the_x),'LineStyle','-.','Color',[0.600000023841858 0.200000002980232 0]) %��ƽ��
% ����ı�
text(3,8,['����',num2str(m_ball),'kg'],'horiz','center','color','k','fontsize',15)
text(3,6,['����',num2str(v_wind),'m/s'],'horiz','center','color','k','fontsize',15)
text(3,4,['ˮ��',num2str(v_sea),'m/s'],'horiz','center','color','k','fontsize',15)
text(2,1,['��=',num2str(pole(2,6)),'��'],'horiz','center','color','k','fontsize',15)
text(sonar_x-2,sonar_y,['��=',num2str(pole(all-4,6)),'��'],'horiz','center','color','k','fontsize',15)
xlabel({'����λ����','��m��'});
ylabel({'����λ����','��m��'});
title({'ϵ��ϵͳģ��ͼ'});
% ������
plot( fubiao_x-1:0.1:fubiao_x+1,fubiao_y*ones(1,21),'Color', 'k' )
plot( fubiao_x-1:0.1:fubiao_x+1,(fubiao_y+2)*ones(1,21),'Color', 'k' )
plot( [fubiao_x-1,fubiao_x-0.9999],[fubiao_y,fubiao_y+2],'Color', 'k' )
plot( [fubiao_x+1,fubiao_x+1.0001],[fubiao_y,fubiao_y+2],'Color', 'k' )
% ������
plot( [sonar_x,sonar_x+0.0001],[sonar_y-5,sonar_y],'Color', 'k' )
plot(sonar_x,sonar_y-5,...
    'MarkerSize',30,...
    'Marker','o',...
    'MarkerFaceColor',[0.8 0.8 0.8],...
    'MarkerEdgeColor',[0 0 0])
% ��ê
plot(0,0,...
    'MarkerSize',10,...
    'Marker','o',...
    'MarkerFaceColor',[0.2 0.2 0.2],...
    'MarkerEdgeColor',[0 0 0])