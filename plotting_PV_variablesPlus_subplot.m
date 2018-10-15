treat='PVvar-paper';
folder=pwd;
folderImg='\paperfigures\';
VScolor=[0.5    0.6250    0.0980];
Scolor=[0    0.3250    0.0980];
Mcolor=[0    0.4470    0.7410];
Lcolor=[0.8500    0.3250    0.0980];

h1=figure('name','Volume 100 ');
subplot(2,3,4)
scatter(0:size(finalresults_1(2).general_data(:,1),1),[0; finalresults_1(2).general_data(:,4)],5,'marker','.','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_2(2).general_data(:,1),1),[0; finalresults_2(2).general_data(:,4)],5,'marker','.','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_3(2).general_data(:,1),1),[0; finalresults_3(2).general_data(:,4)],5,'marker','.','markeredgecolor',Mcolor)
scatter(0:size(finalresults_4(2).general_data(:,1),1),[0; finalresults_4(2).general_data(:,4)],5,'marker','.','markeredgecolor',Lcolor)
%legend('V250 P-500  cup','V100 P-500  cup','V50 P-500  cup','location','southeast')
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
box on
ylim([0 70])
legend(var1, var2, var3, var4, 'location','southeast')
set(gca,'FontSize', 14)

%volume 500
subplot(2,3,5)
scatter(0:size(finalresults_5(2).general_data(:,1),1),[0; finalresults_5(2).general_data(:,4)],5,'marker','*','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_6(2).general_data(:,1),1),[0; finalresults_6(2).general_data(:,4)],5,'marker','*','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_7(2).general_data(:,1),1),[0; finalresults_7(2).general_data(:,4)],5,'marker','*','markeredgecolor',Mcolor)
scatter(0:size(finalresults_8(2).general_data(:,1),1),[0; finalresults_8(2).general_data(:,4)],5,'marker','*','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
box on
legend(var5, var6, var7, var8,'location','southeast')
ylim([0 70])
set(gca,'FontSize', 14)

%volune 813
subplot(2,3,6)
scatter(0:size(finalresults_9(2).general_data(:,1),1),[0; finalresults_9(2).general_data(:,4)],5,'marker','o','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_10(2).general_data(:,1),1),[0; finalresults_10(2).general_data(:,4)],5,'marker','o','markeredgecolor',Scolor)
scatter(0:size(finalresults_11(2).general_data(:,1),1),[0; finalresults_11(2).general_data(:,4)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_12(2).general_data(:,1),1),[0; finalresults_12(2).general_data(:,4)],5,'marker','o','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
box on
legend(var9, var10, var11, var12, 'location','east')
ylim([0 70])
set(gca,'FontSize', 14)


%pressure 100
subplot(2,3,1)
scatter(0:size(finalresults_1(2).general_data(:,1),1),[-100; finalresults_1(2).general_data(:,5)],5,'marker','.','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_2(2).general_data(:,1),1),[-100; finalresults_2(2).general_data(:,5)],5,'marker','.','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_3(2).general_data(:,1),1),[-100; finalresults_3(2).general_data(:,5)],5,'marker','.','markeredgecolor',Mcolor)
scatter(0:size(finalresults_4(2).general_data(:,1),1),[-100; finalresults_4(2).general_data(:,5)],5,'marker','.','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
box on
ylim([-100 0])
set(gca,'FontSize', 14)

%Pressure 500
subplot(2,3,2)
scatter(0:size(finalresults_5(2).general_data(:,1),1),[-500; finalresults_5(2).general_data(:,5)],5,'marker','*','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_6(2).general_data(:,1),1),[-500; finalresults_6(2).general_data(:,5)],5,'marker','*','markeredgecolor',Scolor)
scatter(0:size(finalresults_7(2).general_data(:,1),1),[-500; finalresults_7(2).general_data(:,5)],5,'marker','*','markeredgecolor',Mcolor)
scatter(0:size(finalresults_8(2).general_data(:,1),1),[-500; finalresults_8(2).general_data(:,5)],5,'marker','*','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize', 14)
%pressure 813
subplot(2,3,3)
scatter(0:size(finalresults_9(2).general_data(:,1),1),[-813; finalresults_9(2).general_data(:,5)],5,'marker','o','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_10(2).general_data(:,1),1),[-813; finalresults_10(2).general_data(:,5)],5,'marker','o','markeredgecolor',Scolor)
scatter(0:size(finalresults_11(2).general_data(:,1),1),[-813; finalresults_11(2).general_data(:,5)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_12(2).general_data(:,1),1),[-813; finalresults_12(2).general_data(:,5)],5,'marker','o','markeredgecolor',Lcolor)
set(gca,'FontSize', 14)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
box on
ylim([-840 0])
