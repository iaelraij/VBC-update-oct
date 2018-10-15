
%subregions
% 1- outside
% 2- ceramic tip
% 3- 1 cm
% 4- 2 cm
% 5- 3 cm
position=[.13 .87 .03 .04;
.335 .87 .03 .04;
.55 .87 .03 .04;
.75 .87 .03 .04;
.13 .58 .03 .04;
.335 .58 .03 .04;
0.655 0.42 0.03 0.04
0.863 0.42 0.03 0.04
 .13 .28 .03 .04;
.335 .28 .03 .04;
.55 .28 .03 .04;
.75 .28 .03 .04];
color=[0    0.4470    0.7410;
    0.8500    0.3250    0.0980;
    0.9290    0.6940    0.1250;
    0.4940    0.1840    0.5560];
h12=figure('name', 'ChemBal');
for i=3:6
hold on
scatter(general_data_1(:,1)/60/24,balanceConc_1(:,i),'markeredgecolor',color(i-2,:))
scatter(general_data_2(:,1)/60/24,balanceConc_2(:,i),'markeredgecolor',color(i-2,:),'marker','.')

end
    legend([var1 ' Ceramic tip'],[var2 ' Ceramic tip'],[var1 ' 1 cm'],...
        [var2 ' 1 cm'],[var1 ' 2 cm'],[var2 ' 2 cm'],[var1 ' 3 cm'],[var2 ' 3 cm'])
    xlabel('Time (day)' , 'FontName','Arial')
ylabel('Tracer Concentration' , 'FontName','Arial')
box on
saveas(h12,[mydir '\' answer{1} '\ChemBal.png'])

h13=figure('name', 'ChemBal by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
   for j=3:6
       hold on
       box on
       %ylim([0.2 0.5])
       scatter(finalresults_1(i+1).general_data(:,1),balanceConcDay_1(i).Day(:,j),'markeredgecolor',color(j-2,:))
       scatter(finalresults_2(i+1).general_data(:,1),balanceConcDay_2(i).Day(:,j),'marker','.','markeredgecolor',color(j-2,:))
xlabel('Time (min)' , 'FontName','Arial')
ylabel('Tracer Concentration' , 'FontName','Arial')
   end
   annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
if i==4
    legend([var1 ' Ceramic tip'],[var2 ' Ceramic tip'],[var1 ' 1 cm'],...
        [var2 ' 1 cm'],[var1 ' 2 cm'],[var2 ' 2 cm'],[var1 ' 3 cm'],[var2 ' 3 cm'])
end
end
saveas(h13,[mydir '\' answer{1} '\ChemBalDay.png'])