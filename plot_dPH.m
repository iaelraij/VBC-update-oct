h8zoom=figure('name','pH zoom day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
hold on
box on
scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
   color4,'markeredgecolor',color4)
scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
   color3,'markeredgecolor',color3)
scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,2)),'filled','MarkerFaceColor',...
   color2,'markeredgecolor',color2)
scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,2),'filled',...
    'MarkerFaceColor',color1,'markeredgecolor',color1)
scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,3)),'markeredgecolor',color4)
scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,3)),'markeredgecolor',color3)
scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,3)),'markeredgecolor',color2)
scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,3),'markeredgecolor',color1)
set(gca,'FontSize',14);
xlabel('TAV(min)' ,'FontSize', 12, 'FontName','Arial')
ylabel('pH' ,'FontSize', 12, 'FontName','Arial')
ylim(pHlim)
end
legend(['pH Soil ' var4],['pH Soil ' var3],['pH Soil ' var2],...
    ['pH Soil ' var1],['pH Scup' var4],['pH Scup' var3],['pH Scup ' var2],...
    ['pH Scup ' var1],'location','best')

for i=1:12
dt_1(i)=finalresults_1(i+1).general_data(end,1)-finalresults_1(i+1).general_data(1,1);
dt_2(i)=finalresults_2(i+1).general_data(end,1)-finalresults_2(i+1).general_data(1,1);
dt_3(i)=finalresults_3(i+1).general_data(end,1)-finalresults_3(i+1).general_data(1,1);
dt_4(i)=finalresults_4(i+1).general_data(end,1)-finalresults_4(i+1).general_data(1,1);

dPH_1(i)=finalresults_1(i+1).general_data(end,3)-finalresults_1(i+1).general_data(10,2);
dPH_2(i)=finalresults_2(i+1).general_data(end,3)-finalresults_2(i+1).general_data(10,2);
dPH_3(i)=finalresults_3(i+1).general_data(end,3)-finalresults_3(i+1).general_data(10,2);
dPH_4(i)=finalresults_4(i+1).general_data(end,3)-finalresults_4(i+1).general_data(10,2);
end

h=figure;
scatter(dPH_1,dt_1)
hold on
box on
scatter(dPH_2,dt_2)
scatter(dPH_3,dt_3)
scatter(dPH_4,dt_4)
legend(var1,var2,var3,var4,'location','best')
set(gca,'FontSize',14);
xlabel('dPH' ,'FontSize', 14, 'FontName','Arial')
ylabel('dt (min)' ,'FontSize', 14, 'FontName','Arial')
saveas(h, 'F:\MyDocs\Hydrus Simulations\SuctionCups_New\Fig verylowpH comparison 4\dPH.jpg')

h1=figure;
scatter(1:12,dPH_1)
hold on
box on
scatter(1:12,dPH_2)
scatter(1:12,dPH_3)
scatter(1:12,dPH_4)
legend(var1,var2,var3,var4,'location','best')
set(gca,'FontSize',14);
xlabel('Time (day)' ,'FontSize', 14, 'FontName','Arial')
ylabel('dPH' ,'FontSize', 14, 'FontName','Arial')
saveas(h1, 'F:\MyDocs\Hydrus Simulations\SuctionCups_New\Fig verylowpH comparison 4\dPH_time.jpg')

figure
scatter(1:12,dt_1)
hold on
box on
scatter(1:12,dt_2)
scatter(1:12,dt_3)
scatter(1:12,dt_4)
legend(var1,var2,var3,var4,'location','best')
set(gca,'FontSize',14);
%xlabel('dPH' ,'FontSize', 14, 'FontName','Arial')
ylabel('dt' ,'FontSize', 14, 'FontName','Arial')