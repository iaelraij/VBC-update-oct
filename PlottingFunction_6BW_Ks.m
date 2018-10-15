%testing 1  verylowpH _P500V500
%  2  2
%folderName cell with name of desired folder to save the figures
function PlottingFunction_6BW_Ks(folderName,finalresults_1,finalresults_2,...
    finalresults_3,finalresults_4,finalresults_5,finalresults_6,...
    resultsSolLongR_1,resultsSolLongR_2,resultsSolLongR_3,resultsSolLongR_4,...
    resultsSolLongR_5,resultsSolLongR_6,var1,var2,var3,var4,var5,var6)
%%
color1=[0 0.4470 0.7410];
color2=[0.635 0.078 0.184];
color3=[0.466 0.674 0.188];
color4=[0.494 0.184 0.556];
color5=[1 0 1];
color6=[0 1 1];
pHlim=[6 8.5];
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
    =readResultsFinal(finalresults_1,resultsSolLongR_1);

[seepC_2,ScupC_2,time_2,general_data_2,ScupCf_2,timeF_2,obsNodf_2,...
    Ca_2,K_2,Cl_2,Mg_2,Na_2,S_2,PHcup_2,PHsoil_2,calcite_2,gypsum_2,...
    timePhreeqcLong_2,CaLong_2,KLong_2,ClLong_2,MgLong_2,NaLong_2,...
    SLong_2,v_mean_2,ObsNlong_2,avgObsNlong_2,obsNchem_2,ScupChem_2,...
    SeepQ_2,Scupmeqcm3_2,SoluteBal_2]...
    =readResultsFinal(finalresults_2,resultsSolLongR_2);

[seepC_3,ScupC_3,time_3,general_data_3,ScupCf_3,timeF_3,obsNodf_3,...
    Ca_3,K_3,Cl_3,Mg_3,Na_3,S_3,PHcup_3,PHsoil_3,calcite_3,gypsum_3,...
    timePhreeqcLong_3,CaLong_3,KLong_3,ClLong_3,MgLong_3,NaLong_3,...
    SLong_3,v_mean_3,ObsNlong_3,avgObsNlong_3,obsNchem_3,ScupChem_3,...
    SeepQ_3,Scupmeqcm3_3,SoluteBal_3]=readResultsFinal(finalresults_3,resultsSolLongR_3);

[seepC_4,ScupC_4,time_4,general_data_4,ScupCf_4,timeF_4,obsNodf_4,...
    Ca_4,K_4,Cl_4,Mg_4,Na_4,S_4,PHcup_4,PHsoil_4,calcite_4,gypsum_4,...
    timePhreeqcLong_4,CaLong_4,KLong_4,ClLong_4,MgLong_4,NaLong_4,...
    SLong_4,v_mean_4,ObsNlong_4,avgObsNlong_4,obsNchem_4,ScupChem_4,...
    SeepQ_4,Scupmeqcm4_4,SoluteBal_4]...
    =readResultsFinal(finalresults_4,resultsSolLongR_4);

[seepC_5,ScupC_5,time_5,general_data_5,ScupCf_5,timeF_5,obsNodf_5,...
    Ca_5,K_5,Cl_5,Mg_5,Na_5,S_5,PHcup_5,PHsoil_5,calcite_5,gypsum_5,...
    timePhreeqcLong_5,CaLong_5,KLong_5,ClLong_5,MgLong_5,NaLong_5,...
    SLong_5,v_mean_5,ObsNlong_5,avgObsNlong_5,obsNchem_5,ScupChem_5,...
    SeepQ_5,Scupmeqcm4_5,SoluteBal_5]...
    =readResultsFinal(finalresults_5,resultsSolLongR_5);

[seepC_6,ScupC_6,time_6,general_data_6,ScupCf_6,timeF_6,obsNodf_6,...
    Ca_6,K_6,Cl_6,Mg_6,Na_6,S_6,PHcup_6,PHsoil_6,calcite_6,gypsum_6,...
    timePhreeqcLong_6,CaLong_6,KLong_6,ClLong_6,MgLong_6,NaLong_6,...
    SLong_6,v_mean_6,ObsNlong_6,avgObsNlong_6,obsNchem_6,ScupChem_6,...
    SeepQ_6,Scupmeqcm4_6,SoluteBal_6]...
    =readResultsFinal(finalresults_6,resultsSolLongR_6);

load('subVol')
[Ca_1,Mg_1,Na_1,K_1,S_1,Cl_1]=avgSubreg(Ca_1,Mg_1,Na_1,K_1,S_1,Cl_1,subVol(1,:));
[Ca_2,Mg_2,Na_2,K_2,S_2,Cl_2]=avgSubreg(Ca_2,Mg_2,Na_2,K_2,S_2,Cl_2,subVol(2,:));
[Ca_3,Mg_3,Na_3,K_3,S_3,Cl_3]=avgSubreg(Ca_3,Mg_3,Na_3,K_3,S_3,Cl_3,subVol(3,:));
[Ca_4,Mg_4,Na_4,K_4,S_4,Cl_4]=avgSubreg(Ca_4,Mg_4,Na_4,K_4,S_4,Cl_4,subVol(4,:));
[Ca_5,Mg_5,Na_5,K_5,S_5,Cl_5]=avgSubreg(Ca_5,Mg_5,Na_5,K_5,S_5,Cl_5,subVol(4,:));
[Ca_6,Mg_6,Na_6,K_6,S_6,Cl_6]=avgSubreg(Ca_6,Mg_6,Na_6,K_6,S_6,Cl_6,subVol(4,:));
%%
h7=figure('name','relativeC');
scatter(timeF_1(:,2),Ca_1(9,:),'marker','+','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_1(:,2),Mg_1(9,:),'marker','+','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_1(:,2),Na_1(9,:),'marker','+','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_1(:,2),K_1(9,:),'marker','+','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_1(:,2),S_1(9,:),'marker','+','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_1(:,2),Cl_1(9,:),'marker','+','markeredgecolor',[0.3010    0.7450    0.9330])
scatter(timeF_2(:,2),Ca_2(9,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_2(:,2),Mg_2(9,:),'marker','*','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_2(:,2),Na_2(9,:),'marker','*','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_2(:,2),K_2(9,:),'marker','*','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_2(:,2),S_2(9,:),'marker','*','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_2(:,2),Cl_2(9,:),'marker','*','markeredgecolor',[0.3010    0.7450    0.9330])
scatter(timeF_3(:,2),Ca_3(9,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_3(:,2),Mg_3(9,:),'marker','o','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_3(:,2),Na_3(9,:),'marker','o','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_3(:,2),K_3(9,:),'marker','o','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_3(:,2),S_3(9,:),'marker','o','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_3(:,2),Cl_3(9,:),'marker','o','markeredgecolor',[0.3010    0.7450    0.9330])
scatter(timeF_4(:,2),Ca_4(9,:),'marker','^','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_4(:,2),Mg_4(9,:),'marker','^','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_4(:,2),Na_4(9,:),'marker','^','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_4(:,2),K_4(9,:),'marker','^','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_4(:,2),S_4(9,:),'marker','^','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_4(:,2),Cl_4(9,:),'marker','^','markeredgecolor',[0.3010    0.7450    0.9330])
scatter(timeF_5(:,2),Ca_5(9,:),'marker','.','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_5(:,2),Mg_5(9,:),'marker','.','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_5(:,2),Na_5(9,:),'marker','.','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_5(:,2),K_5(9,:),'marker','.','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_5(:,2),S_5(9,:),'marker','.','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_5(:,2),Cl_5(9,:),'marker','.','markeredgecolor',[0.3010    0.7450    0.9330])
scatter(timeF_6(:,2),Ca_6(9,:),'marker','s','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_6(:,2),Mg_6(9,:),'marker','s','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_6(:,2),Na_6(9,:),'marker','s','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_6(:,2),K_6(9,:),'marker','s','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_6(:,2),S_6(9,:),'marker','s','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_6(:,2),Cl_6(9,:),'marker','s','markeredgecolor',[0.3010    0.7450    0.9330])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend(['Ca ' var1],['Mg ' var1],['Na ' var1],['K ' var1],['SO4 ' var1],...
    ['Cl ' var1],['Ca ' var2],['Mg ' var2],['Na ' var2],['K ' var2],...
    ['SO4 ' var2],['Cl ' var2],['Ca ' var3],['Mg ' var3],['Na ' var3],...
    ['K ' var3],['SO4 ' var3],['Cl ' var3],['Ca ' var4],['Mg ' var4],...
    ['Na ' var4],['K ' var4],['SO4 ' var4],['Cl ' var4],['Ca ' var5],['Mg ' var5],['Na ' var5],...
    ['K ' var5],['SO6 ' var5],['Cl ' var5],['Ca ' var6],['Mg ' var6],...
    ['Na ' var6],['K ' var6],['SO6 ' var6],['Cl ' var6],'location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeAll.png'])

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
scatter(timeF_5(:,2),Na_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),Na_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,3),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),Na_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),Na_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,3),'marker','*','markeredgecolor',color6)
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
scatter(timeF_5(:,2),Mg_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),Mg_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,2),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),Mg_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),Mg_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,2),'marker','*','markeredgecolor',color6)
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
scatter(timeF_5(:,2),Cl_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),Cl_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,7),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),Cl_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),Cl_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,7),'marker','*','markeredgecolor',color6)
% legend(['Soil ' var1],['Scup ' var1],['outHydrus ' var1],['Soil ' var2],...
%     ['Scup ' var2],['outHydrus ' var2],['Soil ' var3],...
%     ['Scup ' var3],['outHydrus ' var3],['Soil ' var4],...
%     ['Scup ' var4],['outHydrus ' var4],'orientation','vertical',...
%     'location','eastoutside');
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
scatter(timeF_5(:,2),K_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),K_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,4),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),K_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),K_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,4),'marker','*','markeredgecolor',color6)
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
scatter(timeF_5(:,2),Ca_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),Ca_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,1),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),Ca_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),Ca_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,1),'marker','*','markeredgecolor',color6)
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
scatter(timeF_5(:,2),S_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),S_5(2,:),'marker','+','markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,6),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),S_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),S_6(2,:),'marker','+','markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,6),'marker','*','markeredgecolor',color6)
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('SO_{4}^{2-} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
saveas(h3,[mydir '\' answer{1} '\solutes.png'])
saveas(h3,[mydir '\' answer{1} '\solutes'])
hold off

h3b=figure('name','solutes legend');
subplot(2,3,1)
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
scatter(timeF_5(:,2),Cl_5(5,:),'filled','markerfacecolor',color5)
scatter(timeF_5(:,2),Cl_5(2,:),'markeredgecolor',color5)
scatter(timeF_5(:,2),ScupCf_5(:,7),'marker','*','markeredgecolor',color5)
scatter(timeF_6(:,2),Cl_6(5,:),'filled','markerfacecolor',color6)
scatter(timeF_6(:,2),Cl_6(2,:),'markeredgecolor',color6)
scatter(timeF_6(:,2),ScupCf_6(:,7),'marker','*','markeredgecolor',color6)
legend(['Soil ' var1],['Scup ' var1],['outHydrus ' var1],['Soil ' var2],...
    ['Scup ' var2],['outHydrus ' var2],['Soil ' var3],['Scup ' var3],...
    ['outHydrus ' var3],['Soil ' var4],['Scup ' var4],['outHydrus ' var4],...
    ['Scup ' var5],['outHydrus ' var5],['Soil ' var6],['Scup ' var6],...
    ['outHydrus ' var6],'orientation','vertical','location','eastoutside');
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl^{-} (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
hold off
saveas(h3b,[mydir '\' answer{1} '\soluteslegend.png'])
%%
h8=figure('name','pH');
axes1 = axes('Parent',h8,...
    'Position',[0.13 0.100952380952381 0.628043758043758 0.845714285714287]);
hold(axes1,'on');
scatter(timeF_1(:,2),PHsoil_1(:,2),'filled','markerfacecolor',color1)
hold on
box on
scatter(timeF_2(:,2),PHsoil_2(:,2),'filled','markerfacecolor',color2)
scatter(timeF_3(:,2),PHsoil_3(:,2),'filled','markerfacecolor',color3)
scatter(timeF_4(:,2),PHsoil_4(:,2),'filled','markerfacecolor',color4)
scatter(timeF_5(:,2),PHsoil_5(:,2),'filled','markerfacecolor',color5)
scatter(timeF_6(:,2),PHsoil_6(:,2),'filled','markerfacecolor',color6)
scatter(timeF_1(:,2),PHcup_1(:),'markeredgecolor',color1)
scatter(timeF_2(:,2),PHcup_2(:),'markeredgecolor',color2)
scatter(timeF_3(:,2),PHcup_3(:),'markeredgecolor',color3)
scatter(timeF_4(:,2),PHcup_4(:),'markeredgecolor',color4)
scatter(timeF_5(:,2),PHcup_5(:),'markeredgecolor',color5)
scatter(timeF_6(:,2),PHcup_6(:),'markeredgecolor',color6)
ylim(pHlim)
legend1=legend(['Soil ' var1],['Soil ' var2],['Soil ' var3],['Soil ' var4],...
    ['Soil ' var5],['Soil ' var6],['Scup' var1],['Scup ' var2],...
    ['Scup ' var3],['Scup ' var4],['Scup ' var5],['Scup ' var6],'location','best');
set(legend1,...
    'Position',[0.768507817742948 0.243809523809524 0.223214289290565 0.482298809523811]);
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('pH ' ,'FontSize', 12, 'FontName','Arial')
saveas(h8,[mydir '\' answer{1} '\pH.png'])
%%
h9=figure('name','solution volume','units','normalized','outerposition',[0 0 1 1]);
subplot(2,2,1)
hold on
box on
time6=0:(size(finalresults_6(3).general_data(:,1),1));
time6=time6;
scatter(time6,[0; finalresults_6(3).general_data(:,4)],'markeredgecolor','k','marker','*')
time5=0:(size(finalresults_5(3).general_data(:,1),1));
time5=time5;
scatter(time5,[0; finalresults_5(3).general_data(:,4)],'markeredgecolor','k','marker','o')
time4=0:(size(finalresults_4(3).general_data(:,1),1));
time4=time4;
scatter(time4,[0; finalresults_4(3).general_data(:,4)],'markeredgecolor','k','marker','.')

xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);

subplot(2,2,2)
hold on
box on
time3=0:(size(finalresults_3(3).general_data(:,1),1));
time3=time3;
scatter(time3,[0; finalresults_3(3).general_data(:,4)],'markeredgecolor','k','marker','*')
time2=0:(size(finalresults_2(3).general_data(:,1),1));
time2=time2;
scatter(time2,[0; finalresults_2(3).general_data(:,4)],'markeredgecolor','k','marker','o')
time1=0:(size(finalresults_1(3).general_data(:,1),1));
time1=time1;
scatter(time1,[0;finalresults_1(3).general_data(:,4)],'markeredgecolor','k','marker','.')
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Volume (cm^{3})' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);

subplot(2,2,3)
hold on
box on
time6=0:size(finalresults_6(3).general_data(:,1));
time5=0:size(finalresults_5(3).general_data(:,1));
time4=0:size(finalresults_4(3).general_data(:,1));

scatter(time6,[-500;finalresults_6(3).general_data(:,5)],'markeredgecolor','k','marker','*')
scatter(time5,[-500;finalresults_5(3).general_data(:,5)],'markeredgecolor','k','marker','o')
scatter(time4,[-500;finalresults_4(3).general_data(:,5)],'markeredgecolor','k','marker','.')

xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);
legend(var6,var5,var4,'Location','southeast')

subplot(2,2,4)
hold on
box on
time3=0:size(finalresults_3(3).general_data(:,1));
time2=0:size(finalresults_2(3).general_data(:,1));
time1=0:size(finalresults_1(3).general_data(:,1));
scatter(time3,[-500;finalresults_3(3).general_data(:,5)],'markeredgecolor','k','marker','*')
scatter(time2,[-500;finalresults_2(3).general_data(:,5)],'markeredgecolor','k','marker','o')
scatter(time1,[-500;finalresults_1(3).general_data(:,5)],'markeredgecolor','k','marker','.')
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
set(gca,'FontSize',14);
legend(var3,var2,var1,'Location','southeast')
saveas(h9,[mydir '\' answer{1} '\PV.png'])


%FdynamicPH(finalresults_1,finalresults_2,var1,var2,pHlim,answer,mydir)
%%
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).Ca,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).Ca(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).Ca,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).Ca(:,5),'o','markeredgecolor',color6);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
set(gca,'FontSize',14);
end
legend(['Ca Scup ' var1],['Ca Soil ' var1],['Ca Scup ' var2],...
    ['Ca Soil ' var2],['Ca Scup ' var3],['Ca Soil ' var3],['Ca Scup ' var4],...
    ['Ca Soil ' var4],['Ca Scup ' var5],['Ca Soil ' var5],...
    ['Ca Scup ' var6],['Ca Soil ' var6],'location','best');
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).Mg,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).Mg(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).Mg,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).Mg(:,5),'o','markeredgecolor',color6);
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).Na,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).Na(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).Na,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).Na(:,5),'o','markeredgecolor',color6);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Na (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['Na Scup ' var1],['Na Soil ' var1],['Na Scup ' var2],['Na Soil ' var2],...
    ['Na Scup ' var3],['Na Soil ' var3],  ['Na Scup ' var4],['Na Soil ' var4],...
     ['Na Scup ' var5],['Na Soil ' var5],  ['Na Scup ' var6],['Na Soil ' var6],'location','best');
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).K,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).K(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).K,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).K(:,5),'o','markeredgecolor',color6);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('K (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['K Scup ' var1],['K Soil ' var1],['K Scup ' var2],['K Soil ' var2],...
    ['K Scup ' var3],['K Soil ' var3],['K Scup ' var4],['K Soil ' var4],...
   ['K Scup ' var5],['K Soil ' var5],['K Scup ' var6],['K Soil ' var6],'location','best');
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).S,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).SO4(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).S,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).SO4(:,5),'o','markeredgecolor',color6);
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('SO4 (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['SO4 Scup ' var1],['SO4 Soil ' var1],['SO4 Scup ' var2],['SO4 Soil ' var2],...
    ['SO4 Scup ' var3],['SO4 Soil ' var3], ['SO4 Scup ' var4],['SO4 Soil ' var4],...
    ['SO6 Scup ' var5],['SO6 Soil ' var5], ['SO6 Scup ' var6],['SO6 Soil ' var6],'location','best');
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
scatter((ScupChem_5(days(i)).time-initialTscup),ScupChem_5(days(i)).Cl,'*','markeredgecolor',color5)
scatter((obsNchem_5(days(i)).time-initialTobs),SoluteBal_5(days(i)).Cl(:,5),'o','markeredgecolor',color5);
scatter((ScupChem_6(days(i)).time-initialTscup),ScupChem_6(days(i)).Cl,'*','markeredgecolor',color6)
scatter((obsNchem_6(days(i)).time-initialTobs),SoluteBal_6(days(i)).Cl(:,5),'o','markeredgecolor',color6);
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
end
legend(['Cl Scup ' var1], ['Cl Soil ' var1],['Cl Scup ' var2],['Cl Soil ' var2],...
    ['Cl Scup ' var3],['Cl Soil ' var3],['Cl Scup ' var4],['Cl Soil ' var4],...
     ['Cl Scup ' var5],['Cl Soil ' var5],['Cl Scup ' var6],['Cl Soil ' var6],'location','best');
saveas(h6,[mydir '\' answer{1} '\Cl day.png'])


h8zoom=figure('name','pH zoom day','units','normalized','outerposition',[0 0 1 1]);
for i=1:4
subplot(2,2,i)
hold on
box on
scatter(1:size(finalresults_6(days(i)+1).general_data(:,1),1),(finalresults_6(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color6,'markeredgecolor',color6)
scatter(1:size(finalresults_5(days(i)+1).general_data(:,1),1),(finalresults_5(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color5,'markeredgecolor',color5)
scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color4,'markeredgecolor',color4)
scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color3,'markeredgecolor',color3)
scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,10)),'filled','MarkerFaceColor',...
   color2,'markeredgecolor',color2)
scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,10),'filled',...
    'MarkerFaceColor',color1,'markeredgecolor',color1)
scatter(1:size(finalresults_6(days(i)+1).general_data(:,1),1),(finalresults_6(days(i)+1).general_data(:,3)),'markeredgecolor',color6)
scatter(1:size(finalresults_5(days(i)+1).general_data(:,1),1),(finalresults_5(days(i)+1).general_data(:,3)),'markeredgecolor',color5)
scatter(1:size(finalresults_4(days(i)+1).general_data(:,1),1),(finalresults_4(days(i)+1).general_data(:,3)),'markeredgecolor',color4)
scatter(1:size(finalresults_3(days(i)+1).general_data(:,1),1),(finalresults_3(days(i)+1).general_data(:,3)),'markeredgecolor',color3)
scatter(1:size(finalresults_2(days(i)+1).general_data(:,1),1),(finalresults_2(days(i)+1).general_data(:,3)),'markeredgecolor',color2)
scatter(1:size(finalresults_1(days(i)+1).general_data(:,1),1),finalresults_1(days(i)+1).general_data(:,3),'markeredgecolor',color1)
set(gca,'FontSize',14);
xlabel('TAV(min)' ,'FontSize', 12, 'FontName','Arial')
ylabel('pH' ,'FontSize', 12, 'FontName','Arial')
ylim(pHlim)
end
legend(['pH Soil ' var6],['pH Soil ' var5],['pH Soil ' var4],['pH Soil ' var3],['pH Soil ' var2],...
    ['pH Soil ' var1],['pH Scup' var6],['pH Scup' var5],['pH Scup' var4],['pH Scup' var3],['pH Scup ' var2],...
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

% plotBalanceMulti(finalresults_1,SoluteBal_1,var1,answer,mydir)
% plotBalanceMulti(finalresults_2,SoluteBal_2,var2,answer,mydir)
% plotBalanceMulti(finalresults_3,SoluteBal_3,var3,answer,mydir)
% plotBalanceMulti(finalresults_4,SoluteBal_4,var4,answer,mydir)
save([mydir '\' answer{1} '\' 'data.mat'],'folderName','finalresults_1','finalresults_2','finalresults_3','finalresults_4','finalresults_5','finalresults_6','resultsSolLongR_1','resultsSolLongR_2','resultsSolLongR_3','resultsSolLongR_4','resultsSolLongR_5','resultsSolLongR_6','var4','var1','var2','var3','var5','var6')
end