treat='PVvar-paper';
folder=pwd;
folderImg='\paperfigures\';
VScolor=[0.5    0.6250    0.0980];
Scolor=[0    0.3250    0.0980];
Mcolor=[0    0.4470    0.7410];
Lcolor=[0.8500    0.3250    0.0980];

%volume V100
h3=figure('name','fixedVolume_vol ');
scatter(0:size(finalresults_1(2).general_data(:,1),1),[0; finalresults_1(2).general_data(:,4)],5,'marker','o','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_2(2).general_data(:,1),1),[0; finalresults_2(2).general_data(:,4)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_3(2).general_data(:,1),1),[0; finalresults_3(2).general_data(:,4)],5,'marker','o','markeredgecolor',Lcolor)
legend('V100 P-100','V100 P-500','V100 P-813','location','southeast')
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{-3})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize', 14)
saveas(h3,[folder folderImg treat 'VolumeV100.png'])

%pressure V100
h4=figure('name','fixedVolume_press ');
scatter(0:size(finalresults_1(2).general_data(:,1),1),[-100; finalresults_1(2).general_data(:,5)],5,'marker','o','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_2(2).general_data(:,1),1),[-100; finalresults_2(2).general_data(:,5)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_3(2).general_data(:,1),1),[-100; finalresults_3(2).general_data(:,5)],5,'marker','o','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize', 14)
saveas(h4,[folder folderImg treat 'PressureV100.png'])

%volume P500
h1=figure('name','Volume');
scatter(0:size(finalresults_4(2).general_data(:,1),1),[0; finalresults_4(2).general_data(:,4)],5,'marker','o','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_5(2).general_data(:,1),1),[0; finalresults_5(2).general_data(:,4)],5,'marker','o','markeredgecolor',Scolor)
hold on
scatter(0:size(finalresults_2(2).general_data(:,1),1),[0; finalresults_2(2).general_data(:,4)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_6(2).general_data(:,1),1),[0; finalresults_6(2).general_data(:,4)],5,'marker','o','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{-3})' ,'FontSize', 14, 'FontName','Arial')
box on
legend('V 1000 P -500','V 250 P-500','V 100 P -500','V 50 P -500','location','best')
%ylim([0 70])
set(gca,'FontSize', 14)
saveas(h1,[folder folderImg treat 'VolumeP500.png'])

%Pressure 500
h2=figure('name','Pressure');
scatter(0:size(finalresults_4(2).general_data(:,1),1),[-500; finalresults_4(2).general_data(:,5)],5,'marker','o','markeredgecolor',VScolor)
hold on
scatter(0:size(finalresults_5(2).general_data(:,1),1),[-500; finalresults_5(2).general_data(:,5)],5,'marker','o','markeredgecolor',Scolor)
scatter(0:size(finalresults_2(2).general_data(:,1),1),[-500; finalresults_2(2).general_data(:,5)],5,'marker','o','markeredgecolor',Mcolor)
scatter(0:size(finalresults_6(2).general_data(:,1),1),[-500; finalresults_6(2).general_data(:,5)],5,'marker','o','markeredgecolor',Lcolor)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize', 14)
saveas(h2,[folder folderImg treat 'PressureP500.png'])

