
treat='KsChem';

folder=pwd;
folderImg='\figuresKsChem\';

%plot results
h1=figure('name','Ca');
scatter(timeF_1(:,2),Ca_1(3,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timePhreeqc_1(2,2:end),Ca_1(2,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_2(:,2),Ca_2(3,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_2(2,2:end),Ca_2(2,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['Ca Soil ' var1],['Ca Scup ' var1],['Ca Soil ' var2],['Ca Scup ' var2],'location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1,[folder folderImg treat '-Ca.png'])

% h1b=figure('name','Ca_all');
% scatter(avgObsNlong_1(:,1)/60/24,avgObsNlong_1(:,5));
% hold on
% scatter(timePhreeqcLong_1/60/24,CaLong_1(2,:));
% scatter(avgObsNlong_2(:,1)/60/24,avgObsNlong_2(:,5));
% scatter(timePhreeqcLong_2/60/24,CaLong_2(2,:));
h1c=figure('name','Ca_day1');
scatter(ScupChem_1(1).time,ScupChem_1(1).Ca,'*','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(obsNchem_1(1).time,obsNchem_1(1).Ca,'o','markeredgecolor',[0    0.4470    0.7410]);
scatter(ScupChem_2(1).time,ScupChem_2(1).Ca,'*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(obsNchem_2(1).time,obsNchem_2(1).Ca,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
legend(['Ca Scup ' var1],['Ca Soil ' var1],['Ca Scup ' var2],['Ca Soil ' var2],'location','best');
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1c,[folder folderImg treat '-Caday1.png'])

h1d=figure('name','Ca_day4');
scatter(ScupChem_1(4).time,ScupChem_1(4).Ca,'*','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(obsNchem_1(4).time,obsNchem_1(4).Ca,'o','markeredgecolor',[0    0.4470    0.7410]);
scatter(ScupChem_2(4).time,ScupChem_2(4).Ca,'*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(obsNchem_2(4).time,obsNchem_2(4).Ca,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
legend(['Ca Scup ' var1],['Ca Soil ' var1],['Ca Scup ' var2],['Ca Soil ' var2],'location','best');
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Caday4.png'])

h1d=figure('name','Ca_day8');
scatter(ScupChem_1(8).time,ScupChem_1(8).Ca,'*','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(obsNchem_1(8).time,obsNchem_1(8).Ca,'o','markeredgecolor',[0    0.4470    0.7410]);
scatter(ScupChem_2(8).time,ScupChem_2(8).Ca,'*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(obsNchem_2(8).time,obsNchem_2(8).Ca,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
legend(['Ca Scup ' var1],['Ca Soil ' var1],['Ca Scup ' var2],['Ca Soil ' var2],'location','best');
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Caday8.png'])

h1d=figure('name','Ca_day12');
initialTobs=min(obsNchem_1(12).time);
initialTscup=min(ScupChem_1(12).time);
scatter((ScupChem_1(12).time-initialTscup),ScupChem_1(12).Ca,'*','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter((obsNchem_1(12).time-initialTobs),obsNchem_1(12).Ca,'o','markeredgecolor',[0    0.4470    0.7410]);
scatter((ScupChem_2(12).time-initialTscup),ScupChem_2(12).Ca,'*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter((obsNchem_2(12).time-initialTobs),obsNchem_2(12).Ca,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
legend(['Ca Scup ' var1]',['Ca Soil ' var1]',['Ca Scup ' var2]',['Ca Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Ca (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Caday12.png'])

h2=figure('name','Mg');
scatter(timeF_1(:,2),Mg_1(3,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),Mg_2(3,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_1(2,2:end),Mg_1(2,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timePhreeqc_2(2,2:end),Mg_2(2,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['Mg Soil ' var1]',['Mg Soil ' var2]',['Mg Scup ' var1]',['Mg Scup ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
hold off
saveas(h2,[folder folderImg treat '-Mg.png'])

h1d=figure('name','Mg_day12');
initialTobs=min(obsNchem_1(12).time);
initialTscup=min(ScupChem_1(12).time);
scatter((ScupChem_1(12).time-initialTscup),ScupChem_1(12).Mg,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(12).time-initialTobs),obsNchem_1(12).Mg,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(12).time-initialTscup),ScupChem_2(12).Mg,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(12).time-initialTobs),obsNchem_2(12).Mg,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Mg Scup ' var1]',['Mg Soil ' var1]',['Mg Scup ' var2]',['Mg Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Mg_day12.png'])

h1d=figure('name','Mg_day8');
initialTobs=min(obsNchem_1(8).time);
initialTscup=min(ScupChem_1(8).time);
scatter((ScupChem_1(8).time-initialTscup),ScupChem_1(8).Mg,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(8).time-initialTobs),obsNchem_1(8).Mg,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(8).time-initialTscup),ScupChem_2(8).Mg,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(8).time-initialTobs),obsNchem_2(8).Mg,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Mg Scup ' var1]',['Mg Soil ' var1]',['Mg Scup ' var2]',['Mg Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Mg_day8.png'])

h1d=figure('name','Mg_day4');
initialTobs=min(obsNchem_1(4).time);
initialTscup=min(ScupChem_1(4).time);
scatter((ScupChem_1(4).time-initialTscup),ScupChem_1(4).Mg,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(4).time-initialTobs),obsNchem_1(4).Mg,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(4).time-initialTscup),ScupChem_2(4).Mg,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(4).time-initialTobs),obsNchem_2(4).Mg,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Mg Scup ' var1]',['Mg Soil ' var1]',['Mg Scup ' var2]',['Mg Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Mg (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Mg_day4.png'])

h3=figure('name','Na');
scatter(timeF_1(:,2),Na_1(3,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),Na_2(3,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_1(2,2:end),Na_1(2,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timePhreeqc_2(2,2:end),Na_2(2,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['Na Soil ' var1]',['Na Soil ' var2]',['Na Scup ' var1]',['Na Scup ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Na (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
hold off
saveas(h3,[folder folderImg treat '-Na.png'])

h4=figure('name','K');
scatter(timeF_1(:,2),K_1(3,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),K_2(3,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_1(2,2:end),K_1(2,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timePhreeqc_2(2,2:end),K_2(2,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['K Soil ' var1]',['K Soil ' var2]',['K Scup ' var1]',['K Scup ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('K (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
hold off
saveas(h4,[folder folderImg treat '-K.png'])

h5=figure('name','S');
scatter(timeF_1(:,2),S_1(3,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),S_2(3,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_1(2,2:end),S_1(2,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timePhreeqc_2(2,2:end),S_2(2,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['SO4 Soil ' var1]',['SO4 Soil ' var2]',['SO4 Scup ' var1]',['SO4 Scup ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('S (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
hold off
saveas(h5,[folder folderImg treat '-S.png'])

h6=figure('name','Cl');
scatter(timeF_1(:,2),Cl_1(3,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),Cl_2(3,:),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(timePhreeqc_1(2,2:end),Cl_1(2,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timePhreeqc_2(2,2:end),Cl_2(2,:),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
legend(['Cl Soil ' var1]',['Cl Soil ' var2]',['Cl Scup ' var1]',['Cl Scup ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
hold off
saveas(h6,[folder folderImg treat '-Cl.png'])

h1d=figure('name','Cl_day12');
initialTobs=min(obsNchem_1(12).time);
initialTscup=min(ScupChem_1(12).time);
scatter((ScupChem_1(12).time-initialTscup),ScupChem_1(12).Cl,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(12).time-initialTobs),obsNchem_1(12).Cl,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(12).time-initialTscup),ScupChem_2(12).Cl,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(12).time-initialTobs),obsNchem_2(12).Cl,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Cl Scup ' var1], ['Cl Soil ' var1],['Cl Scup ' var2],['Cl Soil ' var2],'location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Cl_day12.png'])

h1d=figure('name','Cl_day8');
initialTobs=min(obsNchem_1(8).time);
initialTscup=min(ScupChem_1(8).time);
scatter((ScupChem_1(8).time-initialTscup),ScupChem_1(8).Cl,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(8).time-initialTobs),obsNchem_1(8).Cl,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(8).time-initialTscup),ScupChem_2(8).Cl,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(8).time-initialTobs),obsNchem_2(8).Cl,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Cl Scup ' var1]',['Cl Soil ' var1]',['Cl Scup ' var2]',['Cl Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Cl_day8.png'])

h1d=figure('name','Cl_day4');
initialTobs=min(obsNchem_1(4).time);
initialTscup=min(ScupChem_1(4).time);
scatter((ScupChem_1(4).time-initialTscup),ScupChem_1(4).Cl,'*','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter((obsNchem_1(4).time-initialTobs),obsNchem_1(4).Cl,'o','markeredgecolor',[0.8500    0.3250    0.0980]);
scatter((ScupChem_2(4).time-initialTscup),ScupChem_2(4).Cl,'*','markeredgecolor',[0    0.4470    0.7410])
scatter((obsNchem_2(4).time-initialTobs),obsNchem_2(4).Cl,'o','markeredgecolor',[0    0.4470    0.7410]);
legend(['Cl Scup ' var1]',['Cl Soil ' var1]',['Cl Scup ' var2]',['Cl Soil ' var2]','location','best');
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Cl (meq liter^{-1})' ,'FontSize', 14, 'FontName','Arial')
box on
saveas(h1d,[folder folderImg treat '-Cl_day4.png'])

h8=figure('name','pH');
scatter(timeF_1(:,2),PHsoil_1,'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
box on
scatter(timeF_2(:,2),PHsoil_2,'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
%scatter(timeF_LF200(:,2),PHsoil_LF200,'filled')
scatter(timeF_1(:,2),PHcup_1,'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_2(:,2),PHcup_2,'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
%scatter(timeF_LF200(:,2),PHcup_LF200,'markeredgecolor',[0.9290    0.6940    0.1250])
legend(['pH Soil ' var1]',['pH Soil ' var2],['pH Scup ' var1],['pH Scup ' var2],'location','best')
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('pH ' ,'FontSize', 14, 'FontName','Arial')
saveas(h8,[folder folderImg treat '-pH.png'])

h8zoom=figure('name','pH day8');
scatter(1:size(finalresults_2(9).general_data(:,1),1),(finalresults_2(9).general_data(:,2)),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
box on
scatter(1:size(finalresults_1(9).general_data(:,1),1),finalresults_1(9).general_data(:,2),'marker','o','markeredgecolor',[0    0.4470    0.7410])
scatter(1:size(finalresults_2(9).general_data(:,1),1),(finalresults_2(9).general_data(:,3)),'marker','*','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(1:size(finalresults_1(9).general_data(:,1),1),finalresults_1(9).general_data(:,3),'marker','*','markeredgecolor',[0    0.4470    0.7410])
set(gca,'FontSize',14);
xlabel('TAV(min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('pH' ,'FontSize', 14, 'FontName','Arial')
ylim([7 8.5])
legend([var2 'Soil'],[var1 'Soil'],[var2 'Cup'],[var1 'Cup'],'location','best')
saveas(h8zoom,[folder folderImg treat '-pHzoomDay.png'])

h9=figure('name','solution volume');
hold on
box on
scatter(1:size(finalresults_2(3).general_data(:,1),1),finalresults_2(3).general_data(:,4),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(1:size(finalresults_1(3).general_data(:,1),1),finalresults_1(3).general_data(:,4),'marker','o','markeredgecolor',[0    0.4470    0.7410])
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('volume cm^{-3}' ,'FontSize', 14, 'FontName','Arial')
legend(var2,var1,'location','best')
saveas(h9,[folder folderImg treat 'solutionVol.png'])

h10=figure('name','PressureDay');
hold on
box on
scatter(1:size(finalresults_2(3).general_data(:,1),1),(finalresults_2(3).general_data(:,5)),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(1:size(finalresults_1(3).general_data(:,1),1),finalresults_1(3).general_data(:,5),'marker','o','markeredgecolor',[0    0.4470    0.7410])
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure cm' ,'FontSize', 14, 'FontName','Arial')
legend( var2, var1,'location','best')
saveas(h10,[folder folderImg treat 'pressure.png'])

h10b=figure('name','pressure');
scatter(general_data_2(:,1),general_data_2(:,5),'marker','.','markeredgecolor',[0.8500    0.3250    0.0980])
hold on
scatter(general_data_1(:,1),general_data_1(:,5),'marker','.','markeredgecolor',[0    0.4470    0.7410])
box on
set(gca,'FontSize',14);
xlabel('Time (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Pressure (cm)' ,'FontSize', 14, 'FontName','Arial')
legend(var2, var1,'location','best')
saveas(h10,[folder folderImg treat 'pressure.png'])

h11=figure('name','Calcite day8');
hold on
box on
scatter(1:size(finalresults_2(9).general_data(:,1),1),(finalresults_2(9).general_data(:,7)),'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
scatter(1:size(finalresults_1(9).general_data(:,1),1),finalresults_1(9).general_data(:,7),'marker','o','markeredgecolor',[0    0.4470    0.7410])
set(gca,'FontSize',14);
xlabel('TAV (min)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Calcite (mol)' ,'FontSize', 14, 'FontName','Arial')
ylim([0.00000001 0.00003])
legend( var2,var1,'location','best')
saveas(h11,[folder folderImg treat '-CalcitezoomDay.png'])

h12=figure('name','calcite');
scatter(timeF_1(:,2),calcite_1,'marker','o','markeredgecolor',[0    0.4470    0.7410])
hold on
box on
scatter(timeF_2(:,2),calcite_2,'marker','o','markeredgecolor',[0.8500    0.3250    0.0980])
set(gca,'FontSize',14);
xlabel('Time (days)' ,'FontSize', 14, 'FontName','Arial')
ylabel('Calcite (mol)' ,'FontSize', 14, 'FontName','Arial')
legend(var1, var2,'location','east')
saveas(h12,[folder folderImg treat '-Calcite.png'])

%