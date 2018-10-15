folder=pwd;
%%
% h8zoom=figure('name','pH zoom day','units','normalized','outerposition',[0 0 1 1]);
% for i=1:4
% subplot(2,2,i)
% hold on
% box on
% scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
%    color4,'markeredgecolor',color4)
% scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
%    color3,'markeredgecolor',color3)
% scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
%    color2,'markeredgecolor',color2)
% scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,2),'filled',...
%     'MarkerFaceColor',color1,'markeredgecolor',color1)
% scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,3)),'markeredgecolor',color4)
% scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,3)),'markeredgecolor',color3)
% scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,3)),'markeredgecolor',color2)
% scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,3),'markeredgecolor',color1)
% set(gca,'FontSize',14);
% xlabel('TAV(min)' ,'FontSize', 12, 'FontName','Arial')
% ylabel('pH' ,'FontSize', 12, 'FontName','Arial')
% ylim(pHlim)
% end
% legend(['pH Soil ' var4],['pH Soil ' var3],['pH Soil ' var2],...
%     ['pH Soil ' var1],['pH Scup' var4],['pH Scup' var3],['pH Scup ' var2],...
%     ['pH Scup ' var1],'location','best')
%%

for i=1:12
dt_1(i)=finalresults_1(i+1).general_data(end,1)-finalresults_1(i+1).general_data(1,1);
dt_2(i)=finalresults_2(i+1).general_data(end,1)-finalresults_2(i+1).general_data(1,1);
dt_4(i)=finalresults_4(i+1).general_data(end,1)-finalresults_4(i+1).general_data(1,1);
dt_5(i)=finalresults_5(i+1).general_data(end,1)-finalresults_5(i+1).general_data(1,1);
dt_7(i)=finalresults_7(i+1).general_data(end,1)-finalresults_7(i+1).general_data(1,1);
dt_8(i)=finalresults_8(i+1).general_data(end,1)-finalresults_8(i+1).general_data(1,1);
dt_3(i)=finalresults_3(i+1).general_data(end,1)-finalresults_3(i+1).general_data(1,1);
dt_6(i)=finalresults_6(i+1).general_data(end,1)-finalresults_6(i+1).general_data(1,1);
dt_9(i)=finalresults_9(i+1).general_data(end,1)-finalresults_9(i+1).general_data(1,1);

dPH_1(i)=finalresults_1(i+1).general_data(end,3)-finalresults_1(i+1).general_data(10,2);
dPH_2(i)=finalresults_2(i+1).general_data(end,3)-finalresults_2(i+1).general_data(10,2);
dPH_4(i)=finalresults_4(i+1).general_data(end,3)-finalresults_4(i+1).general_data(10,2);
dPH_5(i)=finalresults_5(i+1).general_data(end,3)-finalresults_5(i+1).general_data(10,2);
dPH_7(i)=finalresults_7(i+1).general_data(end,3)-finalresults_7(i+1).general_data(10,2);
dPH_8(i)=finalresults_8(i+1).general_data(end,3)-finalresults_8(i+1).general_data(10,2);
dPH_3(i)=finalresults_3(i+1).general_data(end,3)-finalresults_3(i+1).general_data(10,2);
dPH_6(i)=finalresults_6(i+1).general_data(end,3)-finalresults_6(i+1).general_data(10,2);
dPH_9(i)=finalresults_9(i+1).general_data(end,3)-finalresults_9(i+1).general_data(10,2);
end
%%
hb=figure('name','dt dpH','units','normalized','outerposition',[0 0 1 1]);
scatter(dPH_1,dt_1,80,'marker','s','markeredgecolor','k')
hold on
box on
scatter(dPH_2,dt_2,80,'marker','s','markeredgecolor','k','markerfacecolor','k')
scatter(dPH_3,dt_3,80,'marker','s','markeredgecolor','r','markerfacecolor','r')
scatter(dPH_4,dt_4,80,'marker','d','markeredgecolor','k')
scatter(dPH_5,dt_5,80,'marker','d','markeredgecolor','k','markerfacecolor','k')
scatter(dPH_6,dt_6,80,'marker','d','markeredgecolor','r','markerfacecolor','r')
scatter(dPH_7,dt_7,80,'marker','o','markeredgecolor','k')
scatter(dPH_8,dt_8,80,'marker','o','markeredgecolor','k','markerfacecolor','k')
scatter(dPH_9,dt_9,80,'marker','o','markeredgecolor','r','markerfacecolor','r')
legend(var1,var2,var3,var4,var5,var6,var7,var8,var9,'location','best')
set(gca,'FontSize',16);
xlabel('dPH' ,'FontSize', 16, 'FontName','Arial')
ylabel('dt (min)' ,'FontSize', 16, 'FontName','Arial')
saveas(hb, [folder '\Fig verylowpH comparison9\dPH9.jpg'])
%%

h=figure;
scatter(dPH_1,dt_1,'marker','s','markeredgecolor','k')
hold on
box on
scatter(dPH_2,dt_2,'marker','s','markeredgecolor','k','markerfacecolor','k')
scatter(dPH_4,dt_4,'marker','d','markeredgecolor','k')
scatter(dPH_5,dt_5,'marker','d','markeredgecolor','k','markerfacecolor','k')
scatter(dPH_7,dt_7,'marker','o','markeredgecolor','k')
scatter(dPH_8,dt_8,'marker','o','markeredgecolor','k','markerfacecolor','k')
legend(var1,var2,var4,var5,var7,var8,'location','best')
set(gca,'FontSize',14);
xlabel('dPH' ,'FontSize', 14, 'FontName','Arial')
ylabel('dt (min)' ,'FontSize', 14, 'FontName','Arial')
saveas(h, [folder '\Fig verylowpH comparison9\dtdPH.jpg'])

h1=figure;
scatter(1:12,dPH_1)
hold on
box on
scatter(1:12,dPH_2)
scatter(1:12,dPH_4)
scatter(1:12,dPH_5)
scatter(1:12,dPH_7)
scatter(1:12,dPH_8)
legend(var1,var2,var4,var5,var7,var8,'location','best')
set(gca,'FontSize',14);
xlabel('Time (day)' ,'FontSize', 14, 'FontName','Arial')
ylabel('dPH' ,'FontSize', 14, 'FontName','Arial')
saveas(h1, [folder '\Fig verylowpH comparison9\dPH.jpg'])

h2=figure;
scatter(1:12,dt_1)
hold on
box on
scatter(1:12,dt_2)
scatter(1:12,dt_4)
scatter(1:12,dt_5)
scatter(1:12,dt_7)
scatter(1:12,dt_8)
legend(var1,var2,var4,var5,var7,var8,'location','best')
set(gca,'FontSize',14);
%xlabel('dPH' ,'FontSize', 14, 'FontName','Arial')
ylabel('dt' ,'FontSize', 14, 'FontName','Arial')
saveas(h2, [folder '\Fig verylowpH comparison9\dt.jpg'])
