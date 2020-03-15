picpath='C:\Users\lj\Desktop\大气成分\pic\';
figure(1)
%温度趋势
set(gcf,'Position',[232 246 400 220],'color','w');
set(gca,'Position',[.17 .21 0.8 .77]);
for i=2:17
    temp(i)=mt(i)-mt(i-1);%计算日变化
end
plot([2:17],temp(2:17),'Linestyle','-','linewidth',1,'marker','none','color','k');
ylabel('\fontsize{10}Temperature(K/moon)','FontName','Times New Roman')
xlabel('\fontsize{10}moon(Aug2018-Nov2019)','FontName','Times New Roman')
set(gca,'xlim',[0.8,17.2],'xtick',[2:2:16],'XTickLabel',['Aug';'Oct';'Dec';'Feb';'Apr';'Jun';'Aug';'Oct'],...
    'ylim',[-5,5],'YTick',[-5:1:5],...
    'FontName','Times New Roman','FontSize',10,'linewidth',1,'FontName','Times New Roman',...
    'XMinorTick','on','ticklength',[0.02,02]);
print( 1, '-dpng', '-r600',[picpath '201807-201911温度月变化趋势.png'])
saveas(1,[ picpath '201807-201911温度月变化趋势.fig'])
figure(2)
%臭氧趋势
set(gcf,'Position',[232 246 400 220],'color','w');
set(gca,'Position',[.17 .21 0.8 .77]);
for i=2:17
    temp(i)=mo3(i)-mo3(i-1);%计算日变化
end
plot([2:17],temp(2:17),'Linestyle','-','linewidth',1,'marker','none','color','k');
ylabel('\fontsize{10}O_3(ppmv/moon)','FontName','Times New Roman')
xlabel('\fontsize{10}moon(Aug2018-Nov2019)','FontName','Times New Roman')
set(gca,'xlim',[0.8,17.2],'xtick',[2:2:16],'XTickLabel',['Aug';'Oct';'Dec';'Feb';'Apr';'Jun';'Aug';'Oct'],...
    'ylim',[-1000,1000],'YTick',[-1000:250:1000],...
    'FontName','Times New Roman','FontSize',10,'linewidth',1,'FontName','Times New Roman',...
    'XMinorTick','on','ticklength',[0.02,02]);
print( 2, '-dpng', '-r600',[picpath '201807-201911臭氧月变化趋势.png'])
saveas(2,[picpath '201807-201911臭氧月变化趋势.fig'])
