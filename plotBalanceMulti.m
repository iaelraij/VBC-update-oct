function plotBalanceMulti(finalresults,SoluteBal,var1,answer,mydir)
%ploting for only one simulation and without saving the graphs.

%subregions
% 1- outside
% 2- ceramic tip
% 3- 1 cm
% 4- 2 cm
% 5- 3 cm
position=[.13 .87 .03 .04; .335 .87 .03 .04; .55 .87 .03 .04;.75 .87 .03 .04;
    .13 .58 .03 .04;.335 .58 .03 .04; 0.655 0.42 0.03 0.04; 0.863 0.42 0.03 0.04;
    .13 .28 .03 .04;.335 .28 .03 .04;.55 .28 .03 .04;.75 .28 .03 .04];
colors=[0.4940    0.1840    0.5560; 0.4660    0.6740    0.1880;
    0.3010    0.7450    0.9330; 0.6350    0.0780    0.1840];
h1=figure('name', 'Ca by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Ca(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('Ca (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h1,[mydir '\' answer{1} '\Ca balance' var1 '.png'])
h3=figure('name', 'Mg by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Mg(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('Mg (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h3,[mydir '\' answer{1} '\Mg balance' var1 '.png'])
h5=figure('name', 'Na by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Na(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('Na (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h5,[mydir '\' answer{1} '\Na balance' var1 '.png'])
h7=figure('name', 'K by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).K(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('K (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h7,[mydir '\' answer{1} '\K balance' var1 '.png'])
h9=figure('name', 'Alk by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Alk(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('Alk (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h9,[mydir '\' answer{1} '\Alk balance' var1 '.png'])
h11=figure('name', 'SO4 by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).SO4(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('SO_{-4} (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h11,[mydir '\' answer{1} '\SO4 balance' var1 '.png'])
h13=figure('name', 'Cl by day','units','normalized','outerposition',[0 0 1 1]);
for i=1:12
    subplot(3,4,i)
    for j=3:6
        hold on
        box on
        % ylim([0.2 0.5])
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Cl(:,j))
        xlabel('Time (min)' , 'FontName','Arial')
        ylabel('Cl^{-} (meq liter^{-1})' , 'FontName','Arial')
    end
    annotation('textbox',position(i,:),'string',['Day ' num2str(i)],'FitBoxToText','on','EdgeColor','none');
    if i==4
        legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
    end
end
saveas(h13,[mydir '\' answer{1} '\Cl balance' var1 '.png'])

h2=figure('name', 'SubregConc Allsolutes 12 days','units','normalized','outerposition',[0 0 1 1]);
subplot(2,4,1)
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Ca(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('Ca (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,2)
%h4=figure('name', 'SubregConc Mg');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Mg(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('Mg (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,3)
% h6=figure('name', 'SubregConc Na');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Na(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('Na (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,4)
% h8=figure('name', 'SubregConc K');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).K(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('K (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,5)
% h10=figure('name', 'SubregConc Alk');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Alk(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('Alk (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,6)
% h12=figure('name', 'SubregConc SO4');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).SO4(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('SO_{-4} (meq liter^{-1})' , 'FontName','Arial')
    box on
    %     legend('Ceramic tip','1 cm','2 cm','3 cm')
end
subplot(2,4,7)
% h14=figure('name', 'SubregConc Cl');
for i=1:12
    for j=3:6
        hold on
        scatter(finalresults(i+1).general_data(:,1),SoluteBal(i).Cl(:,j),'marker','.','markeredgecolor',colors(j-2,:))
    end
    xlabel('Time (min)' , 'FontName','Arial')
    ylabel('Cl^{-} (meq liter^{-1})' , 'FontName','Arial')
    box on
    legend([var1 ' Ceramic tip'],[var1 ' 1 cm'],[var1 ' 2 cm'],[var1 ' 3 cm'])
end
saveas(h2,[mydir '\' answer{1} '\AllSol balance' var1 '.png'])

end
