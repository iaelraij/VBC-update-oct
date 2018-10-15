function RelativePlotOld_4(folderName,finalresults_1,finalresults_2,resultsSolLongR_1,resultsSolLongR_2,var1,var2)
color1=[0 0.4470 0.7410];
color2=[0.635 0.078 0.184];
color3=[0.466 0.674 0.188];
color4=[0.494 0.184 0.556];
pHlim=[7 8];
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
load('subVol')
[Ca_1,Mg_1,Na_1,K_1,S_1,Cl_1,AvgRel_1]=avgSubreg(Ca_1,Mg_1,Na_1,K_1,S_1,Cl_1,subVol(1,:));
[Ca_2,Mg_2,Na_2,K_2,S_2,Cl_2,AvgRel_2]=avgSubreg(Ca_2,Mg_2,Na_2,K_2,S_2,Cl_2,subVol(2,:));
[Ca_3,Mg_3,Na_3,K_3,S_3,Cl_3,AvgRel_3]=avgSubreg(Ca_3,Mg_3,Na_3,K_3,S_3,Cl_3,subVol(3,:));
[Ca_4,Mg_4,Na_4,K_4,S_4,Cl_4,AvgRel_4]=avgSubreg(Ca_4,Mg_4,Na_4,K_4,S_4,Cl_4,subVol(4,:));

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
scatter(timeF_4(:,2),Ca_4(9,:),'marker','.','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_4(:,2),Mg_4(9,:),'marker','.','markeredgecolor',[0.635 0.078 0.184 ])
scatter(timeF_4(:,2),Na_4(9,:),'marker','.','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_4(:,2),K_4(9,:),'marker','.','markeredgecolor',[0.4940    0.1840    0.5560])
scatter(timeF_4(:,2),S_4(9,:),'marker','.','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_4(:,2),Cl_4(9,:),'marker','.','markeredgecolor',[0.3010    0.7450    0.9330])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend(['Ca ' var1],['Mg ' var1],['Na ' var1],['K ' var1],['SO4 ' var1],...
    ['Cl ' var1],['Ca ' var2],['Mg ' var2],['Na ' var2],['K ' var2],...
    ['SO4 ' var2],['Cl ' var2],['Ca ' var3],['Mg ' var3],['Na ' var3],...
    ['K ' var3],['SO4 ' var3],['Cl ' var3],['Ca ' var4],['Mg ' var4],...
    ['Na ' var4],['K ' var4],['SO4 ' var4],['Cl ' var4],'location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeAll.png'])

end