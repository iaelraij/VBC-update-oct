i=1;

balanceConcVol=[];
volW=[];
balanceConc1=[];
    for q=1:size(finalresults(i+1).phreeqcAll,1)
        %selecting only the time=1 concentrations for each minute of
        %simulation for all subregions
       balanceConcVol=finalresults(i+1).balance((q-1)*13+5:(q-1)*13+12,7:12);
    
       volW(q,:)=finalresults(i+1).balance((q-1)*13+12,7:12);
    balanceConc1((q-1)*8+1:(q-1)*8+8,:)=balanceConcVol./repmat(volW(q,:),8,1);
    end