function relativeSteps

h7=figure('name','relative Ca');
scatter(timeF_1(:,2),Ca_1(9,:),'marker','+','markeredgecolor',[0    0.4470    0.7410])
hold on
scatter(timeF_2(:,2),Ca_2(9,:),'marker','*','markeredgecolor',[0    0.4470    0.7410])
scatter(timeF_3(:,2),Ca_3(9,:),'marker','o','markeredgecolor',[0    0.4470    0.7410])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeCa.png'])

%%
h7=figure('name','relative Mg');
hold on
 scatter(timeF_1(:,2),Mg_1(9,:),'marker','+','markeredgecolor',[0.635 0.078 0.184 ])
 scatter(timeF_2(:,2),Mg_2(9,:),'marker','*','markeredgecolor',[0.635 0.078 0.184 ])
 scatter(timeF_3(:,2),Mg_3(9,:),'marker','o','markeredgecolor',[0.635 0.078 0.184 ])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeMg.png'])

%%
h7=figure('name','relative Na');
hold on
 scatter(timeF_1(:,2),Na_1(9,:),'marker','+','markeredgecolor',[0.466	0.674	0.188 ])
 scatter(timeF_2(:,2),Na_2(9,:),'marker','*','markeredgecolor',[0.466	0.674	0.188 ])
scatter(timeF_3(:,2),Mg_3(9,:),'marker','o','markeredgecolor',[0.635 0.078 0.184 ])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeNa.png'])

%%
h7=figure('name','relative K');
hold on
 scatter(timeF_1(:,2),K_1(9,:),'marker','+','markeredgecolor',[0.4940    0.1840    0.5560])
 scatter(timeF_2(:,2),K_2(9,:),'marker','*','markeredgecolor',[0.4940    0.1840    0.5560])
 scatter(timeF_3(:,2),K_3(9,:),'marker','o','markeredgecolor',[0.4940    0.1840    0.5560])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeK.png'])

%%
h7=figure('name','relative SO4');
hold on
 scatter(timeF_1(:,2),S_1(9,:),'marker','+','markeredgecolor',[0.4660    0.6740    0.1880])
scatter(timeF_2(:,2),S_2(9,:),'marker','*','markeredgecolor',[0.4660    0.6740    0.1880])
 scatter(timeF_3(:,2),S_3(9,:),'marker','o','markeredgecolor',[0.4660    0.6740    0.1880])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeS.png'])

%%
h7=figure('name','relative Cl');
hold on
 scatter(timeF_1(:,2),Cl_1(9,:),'marker','+','markeredgecolor',[0.3010    0.7450    0.9330])
 scatter(timeF_2(:,2),Cl_2(9,:),'marker','*','markeredgecolor',[0.3010    0.7450    0.9330])
 scatter(timeF_3(:,2),Cl_3(9,:),'marker','o','markeredgecolor',[0.3010    0.7450    0.9330])
hline = refline([0 1]);
hline.Color = 'k';
box on
legend('high','low','medium','location','eastoutside')
xlabel('Time (days)' ,'FontSize', 12, 'FontName','Arial')
ylabel('Relative concentration' ,'FontSize', 12, 'FontName','Arial')
saveas(h7,[mydir '\' answer{1} '\relativeCl.png'])
end