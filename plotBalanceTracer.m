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

h=figure('name', 'ChemBal');
for i=3:6
hold on
scatter(general_data(:,1)/60/24,balanceConc(:,i))
end
legend('Ceramic tip','1 cm','2 cm','3 cm')
xlabel('Time (day)' , 'FontName','Arial')
ylabel('Tracer Concentration' , 'FontName','Arial')
box on

h=figure('name', 'ChemBal by day');
for i=1:12
    subplot(3,4,i)
   for j=3:6
       hold on
       box on
       ylim([0.2 0.5])
       scatter(finalresults(i+1).general_data(:,1),balanceConcDay(i).Day(:,j))
       
xlabel('Time (min)' , 'FontName','Arial')
ylabel('Tracer Concentration' , 'FontName','Arial')
   end
   annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
if i==4
    legend('Ceramic tip','1 cm','2 cm','3 cm')
end
end

