%testing 1  verylowpH _P500V500
%  2  2
%folderName cell with name of desired folder to save the figures
function PlottingFunction_4old(folderName,finalresults_1,finalresults_2,...
    finalresults_3,finalresults_4,resultsSolLongR_1,resultsSolLongR_2,resultsSolLongR_3,...
    resultsSolLongR_4,var1,var2,var3,var4)
color1=[0 0.4470 0.7410];
color2=[0.635 0.078 0.184];
color3=[0.466 0.674 0.188];
color4=[0.494 0.184 0.556];
pHlim=[6 8];
mydir  = pwd;
addpath([mydir '\Functions'])
%answer = inputdlg('folder name for saving');
answer=folderName;
if exist(answer{1})==7
display('No need for new folder') 
else
    display('Creating folder') 
mkdir(answer{1})
end

[seepC_1,ScupC_1,time_1,general_data_1,ScupCf_1,timeF_1,obsNodf_1,...
    Ca_1,K_1,Cl_1,Mg_1,Na_1,S_1,PHcup_1,PHsoil_1,calcite_1,gypsum_1,...
    timePhreeqcLong_1,CaLong_1,KLong_1,ClLong_1,MgLong_1,NaLong_1,...
    SLong_1,v_mean_1,ObsNlong_1,avgObsNlong_1,obsNchem_1,ScupChem_1,...
    SeepQ_1,Scupmeqcm3_1,SoluteBal_1]...
    =readResultsFinalold(finalresults_1,resultsSolLongR_1);

[seepC_2,ScupC_2,time_2,general_data_2,ScupCf_2,timeF_2,obsNodf_2,...
    Ca_2,K_2,Cl_2,Mg_2,Na_2,S_2,PHcup_2,PHsoil_2,calcite_2,gypsum_2,...
    timePhreeqcLong_2,CaLong_2,KLong_2,ClLong_2,MgLong_2,NaLong_2,...
    SLong_2,v_mean_2,ObsNlong_2,avgObsNlong_2,obsNchem_2,ScupChem_2,...
    SeepQ_2,Scupmeqcm3_2,SoluteBal_2]...
    =readResultsFinalold(finalresults_2,resultsSolLongR_2);
[seepC_3,ScupC_3,time_3,general_data_3,ScupCf_3,timeF_3,obsNodf_3,...
    Ca_3,K_3,Cl_3,Mg_3,Na_3,S_3,PHcup_3,PHsoil_3,calcite_3,gypsum_3,...
    timePhreeqcLong_3,CaLong_3,KLong_3,ClLong_3,MgLong_3,NaLong_3,...
    SLong_3,v_mean_3,ObsNlong_3,avgObsNlong_3,obsNchem_3,ScupChem_3,...
    SeepQ_3,Scupmeqcm3_3,SoluteBal_3]...
    =readResultsFinalold(finalresults_3,resultsSolLongR_3);

[seepC_4,ScupC_4,time_4,general_data_4,ScupCf_4,timeF_4,obsNodf_4,...
    Ca_4,K_4,Cl_4,Mg_4,Na_4,S_4,PHcup_4,PHsoil_4,calcite_4,gypsum_4,...
    timePhreeqcLong_4,CaLong_4,KLong_4,ClLong_4,MgLong_4,NaLong_4,...
    SLong_4,v_mean_4,ObsNlong_4,avgObsNlong_4,obsNchem_4,ScupChem_4,...
    SeepQ_4,Scupmeqcm4_4,SoluteBal_4]...
    =readResultsFinalold(finalresults_4,resultsSolLongR_4);

h3=figure('name','All solutes','units','normalized','outerposition',[0 0 1 1]);
subplot(2,3,4)
scatter(timeF_1(:,2),Na_1(5,:),'filled','markerfacecolor',color1)
hold on
scatter(timeF_1(:,2),Na_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,3),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),Na_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),Na_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,3),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),Na_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),Na_3(2,:),'markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,3),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),Na_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),Na_4(2,:),'markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,3),'marker','*','markeredgecolor',color4)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Na^{+} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off

%h3=figure('name','Mg');
subplot(2,3,2)
scatter(timeF_1(:,2),Mg_1(5,:),'filled','markerfacecolor',color1)
hold on
scatter(timeF_1(:,2),Mg_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,2),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),Mg_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),Mg_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,2),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),Mg_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),Mg_3(2,:),'markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,2),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),Mg_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),Mg_4(2,:),'markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,2),'marker','*','markeredgecolor',color4)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg^{2+} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off

%h3=figure('name','Cl');
subplot(2,3,3)
hold on
scatter(timeF_1(:,2),Cl_1(5,:),'filled','markerfacecolor',color1)
scatter(timeF_1(:,2),Cl_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,7),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),Cl_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),Cl_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,7),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),Cl_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),Cl_3(2,:),'markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,7),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),Cl_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),Cl_4(2,:),'markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,7),'marker','*','markeredgecolor',color4)
legend(['Soil ' var1],['Scup ' var1],['outHydrus ' var1],['Soil ' var2],...
    ['Scup ' var2],['outHydrus ' var2],['Soil ' var3],...
    ['Scup ' var3],['outHydrus ' var3],['Soil ' var4],...
    ['Scup ' var4],['outHydrus ' var4],'orientation','horizontal',...
    'location','northoutside');
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl^{-} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off

%h3=figure('name','K');
subplot(2,3,5)
scatter(timeF_1(:,2),K_1(5,:),'filled','markerfacecolor',color1)
hold on
scatter(timeF_1(:,2),K_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,4),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),K_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),K_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,4),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),K_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),K_3(2,:),'markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,4),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),K_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),K_4(2,:),'markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,4),'marker','*','markeredgecolor',color4)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('K^{+} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off

%h3=figure('name','Ca');
subplot(2,3,1)
scatter(timeF_1(:,2),Ca_1(5,:),'filled','markerfacecolor',color1)
hold on
scatter(timeF_1(:,2),Ca_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,1),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),Ca_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),Ca_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,1),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),Ca_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),Ca_3(2,:),'markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,1),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),Ca_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),Ca_4(2,:),'markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,1),'marker','*','markeredgecolor',color4)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca^{2+} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off

%h3=figure('name','S');3
subplot(2,3,6)
scatter(timeF_1(:,2),S_1(5,:),'filled','markerfacecolor',color1)
hold on
scatter(timeF_1(:,2),S_1(2,:),'markeredgecolor',color1)
scatter(timeF_1(:,2),ScupCf_1(:,6),'marker','*','markeredgecolor',color1)
scatter(timeF_2(:,2),S_2(5,:),'filled','markerfacecolor',color2)
scatter(timeF_2(:,2),S_2(2,:),'markeredgecolor',color2)
scatter(timeF_2(:,2),ScupCf_2(:,6),'marker','*','markeredgecolor',color2)
scatter(timeF_3(:,2),S_3(5,:),'filled','markerfacecolor',color3)
scatter(timeF_3(:,2),S_3(2,:),'marker','+','markeredgecolor',color3)
scatter(timeF_3(:,2),ScupCf_3(:,6),'marker','*','markeredgecolor',color3)
scatter(timeF_4(:,2),S_4(5,:),'filled','markerfacecolor',color4)
scatter(timeF_4(:,2),S_4(2,:),'marker','+','markeredgecolor',color4)
scatter(timeF_4(:,2),ScupCf_4(:,6),'marker','*','markeredgecolor',color4)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('SO_{4}^{2-} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
saveas(h3,[mydir '\' answer{1} '\solutes.png'])
saveas(h3,[mydir '\' answer{1} '\solutes'])
hold off

h8=figure('name','pH');
scatter(timeF_1(:,2),PHsoil_1(:),'filled','markerfacecolor',color1)
hold on
box on
scatter(timeF_2(:,2),PHsoil_2(:),'filled','markerfacecolor',color2)
scatter(timeF_3(:,2),PHsoil_3(:),'filled','markerfacecolor',color3)
scatter(timeF_4(:,2),PHsoil_4(:),'filled','markerfacecolor',color4)
scatter(timeF_1(:,2),PHcup_1(:),'markeredgecolor',color1)
scatter(timeF_2(:,2),PHcup_2(:),'markeredgecolor',color2)
scatter(timeF_3(:,2),PHcup_3(:),'markeredgecolor',color3)
scatter(timeF_4(:,2),PHcup_4(:),'markeredgecolor',color4)
ylim(pHlim)
legend(['Soil ' var1],['Soil ' var2],['Soil ' var3],...
    ['Soil ' var4],['Scup' var1],...
    ['Scup ' var2],['Scup ' var3],['Scup ' var4],'location','best')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('pH ' ,'FontSize', 12, 'FontName','Arial')
saveas(h8,[mydir '\' answer{1} '\pH.png'])

h9=figure('name','solution volume');
subplot(1,2,1)
hold on
box on
time4=0:(size(finalresults_4(3).general_data(:,1),1));
time4=time4;
scatter(time4,[0; finalresults_4(3).general_data(:,4)],'markeredgecolor',color4)
time3=0:(size(finalresults_3(3).general_data(:,1),1));
time3=time3;
scatter(time3,[0; finalresults_3(3).general_data(:,4)],'markeredgecolor',color3)
time2=0:(size(finalresults_2(3).general_data(:,1),1));
time2=time2;
scatter(time2,[0; finalresults_2(3).general_data(:,4)],'markeredgecolor',color2)
time1=0:(size(finalresults_1(3).general_data(:,1),1));
time1=time1;
scatter(time1,[0;finalresults_1(3).general_data(:,4)],'markeredgecolor',color1)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);

subplot(1,2,2)
hold on
box on
time4=0:size(finalresults_4(3).general_data(:,1));
time3=0:size(finalresults_3(3).general_data(:,1));
time2=0:size(finalresults_2(3).general_data(:,1));
time1=0:size(finalresults_1(3).general_data(:,1));
scatter(time4,[-500;finalresults_4(3).general_data(:,5)],'markeredgecolor',color4)
scatter(time3,[-500;finalresults_3(3).general_data(:,5)],'markeredgecolor',color3)
scatter(time2,[-500;finalresults_2(3).general_data(:,5)],'markeredgecolor',color2)
scatter(time1,[-500;finalresults_1(3).general_data(:,5)],'markeredgecolor',color1)
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);
legend(var4,var3,var2,var1,'Location','best')
saveas(h9,[mydir '\' answer{1} '\PV.png'])
FdynamicPH(finalresults_1,finalresults_2,var1,var2,pHlim,answer,mydir)

%=========================================================================
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
h1d=figure('name','Ca_day','units','normalized','outerposition',[0 0 1 1]);
days=[1 4 8 12];
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).Ca,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).Ca(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).Ca,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).Ca(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).Ca,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).Ca(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).Ca,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).Ca(:,5),'o','markeredgecolor',color4);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
end
legend(['Ca Scup ' var1],['Ca Soil ' var1],['Ca Scup ' var2],...
    ['Ca Soil ' var2],['Ca Scup ' var3],['Ca Soil ' var3],...
    ['Ca Scup ' var4],['Ca Soil ' var4],'location','best');
saveas(h1d,[mydir '\' answer{1} '\Ca day.png'])

h1e=figure('name','Mg_day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).Mg,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).Mg(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).Mg,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).Mg(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).Mg,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).Mg(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).Mg,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).Mg(:,5),'o','markeredgecolor',color4);
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['Mg Scup ' var1],['Mg Soil ' var1],['Mg Scup ' var2],['Mg Soil ' var2],...
    ['Mg Scup ' var3],['Mg Soil ' var3],...
    ['Mg Scup ' var4],['Mg Soil ' var4],'location','best');
saveas(h1e,[mydir '\' answer{1} '\Mg day.png'])


h3=figure('name','Na_day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).Na,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).Na(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).Na,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).Na(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).Na,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).Na(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).Na,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).Na(:,5),'o','markeredgecolor',color4);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Na (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['Na Scup ' var1],['Na Soil ' var1],['Na Scup ' var2],['Na Soil ' var2],...
    ['Na Scup ' var3],['Na Soil ' var3],  ['Na Scup ' var4],['Na Soil ' var4],'location','best');
saveas(h3,[mydir '\' answer{1} '\Na day.png'])

h4=figure('name','K_day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).K,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).K(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).K,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).K(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).K,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).K(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).K,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).K(:,5),'o','markeredgecolor',color4);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('K (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['K Scup ' var1],['K Soil ' var1],['K Scup ' var2],['K Soil ' var2],...
    ['K Scup ' var3],['K Soil ' var3],['K Scup ' var4],['K Soil ' var4],'location','best');
saveas(h4,[mydir '\' answer{1} '\K day.png'])

h5=figure('name','SO4_day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).S,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).SO4(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).S,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).SO4(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).S,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).SO4(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).S,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).SO4(:,5),'o','markeredgecolor',color4);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('SO4 (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['SO4 Scup ' var1],['SO4 Soil ' var1],['SO4 Scup ' var2],['SO4 Soil ' var2],...
    ['SO4 Scup ' var3],['SO4 Soil ' var3], ['SO4 Scup ' var4],['SO4 Soil ' var4],'location','best');
saveas(h5,[mydir '\' answer{1} '\SO4 day.png'])

h6=figure('name','Cl_days','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
initialTobs=min(obsNchem_1(days(i)).time);
initialTscup=min(ScupChem_1(days(i)).time);
scatter((ScupChem_1(days(i)).time-initialTscup),ScupChem_1(days(i)).Cl,'*','markeredgecolor',color1)
hold on
scatter((obsNchem_1(days(i)).time-initialTobs),SoluteBal_1(days(i)).Cl(:,5),'o','markeredgecolor',color1);
scatter((ScupChem_2(days(i)).time-initialTscup),ScupChem_2(days(i)).Cl,'*','markeredgecolor',color2)
scatter((obsNchem_2(days(i)).time-initialTobs),SoluteBal_2(days(i)).Cl(:,5),'o','markeredgecolor',color2);
scatter((ScupChem_3(days(i)).time-initialTscup),ScupChem_3(days(i)).Cl,'*','markeredgecolor',color3)
scatter((obsNchem_3(days(i)).time-initialTobs),SoluteBal_3(days(i)).Cl(:,5),'o','markeredgecolor',color3);
scatter((ScupChem_4(days(i)).time-initialTscup),ScupChem_4(days(i)).Cl,'*','markeredgecolor',color4)
scatter((obsNchem_4(days(i)).time-initialTobs),SoluteBal_4(days(i)).Cl(:,5),'o','markeredgecolor',color4);
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['Cl Scup ' var1], ['Cl Soil ' var1],['Cl Scup ' var2],['Cl Soil ' var2],...
    ['Cl Scup ' var3],['Cl Soil ' var3],['Cl Scup ' var4],['Cl Soil ' var4],'location','best');
saveas(h6,[mydir '\' answer{1} '\Cl day.png'])


h8zoom=figure('name','pH zoom day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
hold on
box on
scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color4,'markeredgecolor',color4)
scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color3,'markeredgecolor',color3)
scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color2,'markeredgecolor',color2)
scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,10),'filled',...
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
saveas(h8zoom,[mydir '\' answer{1} '\pH day.png'])

h10b=figure('name','pressure');
scatter(general_data_4(:,1),general_data_4(:,5),'marker','.','markeredgecolor',color4)
hold on
scatter(general_data_3(:,1),general_data_3(:,5),'marker','.','markeredgecolor',color3)
scatter(general_data_2(:,1),general_data_2(:,5),'marker','.','markeredgecolor',color2)
scatter(general_data_1(:,1),general_data_1(:,5),'marker','.','markeredgecolor',color1)
box on
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
legend(var3,var2, var1,'location','best')
saveas(h10b,[mydir '\' answer{1} '\pressure.png'])

h11=figure('name','Calcite day8');
subplot(1,2,1)
hold on
box on
scatter(1:size(finalresults_4(9).general_data(:,1),1),(finalresults_4(9).general_data(:,7)),'marker','o','markeredgecolor',color4)
scatter(1:size(finalresults_3(9).general_data(:,1),1),(finalresults_3(9).general_data(:,7)),'marker','o','markeredgecolor',color3)
scatter(1:size(finalresults_2(9).general_data(:,1),1),(finalresults_2(9).general_data(:,7)),'marker','o','markeredgecolor',color2)
scatter(1:size(finalresults_1(9).general_data(:,1),1),finalresults_1(9).general_data(:,7),'marker','o','markeredgecolor',color1)
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Calcite (mol)' ,'FontSize', 14, 'FontName','Arial')
ylim([0.00000001 0.00003])

subplot(1,2,2)
scatter(timeF_1(:,2),calcite_1,'marker','o','markeredgecolor',color1)
hold on
box on
scatter(timeF_2(:,2),calcite_2,'marker','o','markeredgecolor',color2)
scatter(timeF_3(:,2),calcite_3,'marker','o','markeredgecolor',color3)
scatter(timeF_4(:,2),calcite_4,'marker','o','markeredgecolor',color4)
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Calcite (mol)' ,'FontSize', 14, 'FontName','Arial')
legend(var1, var2,var3,var4,'location','east')
saveas(h11,[mydir '\' answer{1} '\Calcite.png'])

plotBalanceMulti(finalresults_1,SoluteBal_1,var1,answer,mydir)
plotBalanceMulti(finalresults_2,SoluteBal_2,var2,answer,mydir)
plotBalanceMulti(finalresults_3,SoluteBal_3,var3,answer,mydir)
plotBalanceMulti(finalresults_4,SoluteBal_4,var4,answer,mydir)
save([mydir '\' answer{1} '\' 'data.mat'],'folderName','finalresults_1','finalresults_2','finalresults_3','finalresults_4','resultsSolLongR_1','resultsSolLongR_2','resultsSolLongR_3','resultsSolLongR_4','var4','var1','var2','var3')
end