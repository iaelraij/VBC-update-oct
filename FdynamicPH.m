% load('variables_cupsize.mat')
%load('variables_3V_P500.mat')
%var1='1';
%var2='2';
function FdynamicPH(finalresults_1,finalresults_2,var1,var2,pHrange,answer,mydir)
win=winter;
co=cool;
h8=figure('name','dynamic_pH');
for i=2:13
hold on
c=linspace(1,10,length(finalresults_2(i).general_data(:,1)/60/24));
ax1 = gca;
ylim(pHrange)
scatter(ax1,(finalresults_2(i).general_data(:,1)/60/24),finalresults_2(i).general_data(:,3),[],c,'marker','^');
end
ax2=axes;
for i=2:13
hold on
d=linspace(1,10,length(finalresults_1(i).general_data(:,1)/60/24));
scatter(ax2,(finalresults_1(i).general_data(:,1)/60/24),finalresults_1(i).general_data(:,3),[],d,'marker','*');
hold on
ylim(pHrange)
xlim([0 12])
%set(h8,'WindowStyle','docked')
end
for i=2:13
    scatter(ax1,(finalresults_2(i).general_data(end,1)/60/24),finalresults_2(i).general_data(end,10),'marker','o','markerfacecolor',win(64,:),'markeredgecolor',win(64,:))
scatter(ax1,(finalresults_1(i).general_data(end,1)/60/24),finalresults_1(i).general_data(end,10),'marker','+','markerfacecolor',co(64,:),'markeredgecolor',co(64,:))
end
%% Link them together
linkaxes([ax1,ax2])
%% Hide the top axes
ax2.Visible = 'off';
ax2.XTick = [];
ax2.YTick = [];
%% Give each one its own colormap
colormap(ax1,'winter')
colormap(ax2,'cool')
%% Then add colorbars and get everything lined up
set([ax1,ax2],'Position',[.17 .15 .685 .815]);
box(ax1,'on')
box(ax2,'on')
set(ax1,'FontSize', 14)
xlabel(ax1,'Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel(ax1,'pH ' ,'FontSize', 14, 'FontName','Arial')
saveas(h8,[mydir '\' answer{1} '\pHdynamic.png'])
%legend
h=figure('name','legend');
hold on
scatter(1,2,'marker','^','markeredgecolor',win(1,:))
scatter(1,3,'marker','*','markeredgecolor',co(1,:))
scatter(1,4,'marker','o','markeredgecolor',win(64,:),'markerfacecolor',win(64,:))
scatter(1,5,'marker','+','markeredgecolor',co(64,:))
legend(['Scup ' var2 ' cm^{3}'],['Scup ' var1 ' cm^{3}'],['Soil ' var2 ' cm^{3}'],...
    ['Soil ' var1 ' cm^{3}'],'location','eastoutside','orientation','vertical')
% set(h,'WindowStyle','docked')
saveas(h,[mydir '\' answer{1} '\legend2.png'])
end
