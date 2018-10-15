
function [pHout,calcite,gypsum,equil_pHvbc,phreeqcR,pHnodes,pHsub2,pHsub3,pHsub4,pHsub5]=PHREEQC(volume, V1, simName, CO2, cupConc,k,nodes,VBC,j,obsNnodes,NSubreg2,NSubreg3,NSubreg4,NSubreg5)
%phreeqc is run every 10 minutes during the sampling period and not every
%minute like the HYDRUS+UNSATCHEM
if mod(k,10)==0 || j==1
    %==========getting the pH of the soil==================================
    equil = fopen([simName '\equil.out'], 'r');
    i = 1;
    lines_equil{i} = fgets(equil);
    while ischar(lines_equil{i})
        i = i + 1;
        lines_equil{i} = fgets(equil);
    end
    fclose(equil);
    equil_pH=[];
    for ind = 9 : i-2
        v = str2num(lines_equil{1,ind});
        equil_pH = cat(1,equil_pH,v);
    end
    equil_pH1=equil_pH(nodes+1:nodes*2,:);
    phVBC=[];
    for j=VBC
        phVBC=[phVBC ; equil_pH1(j,:)];
    end
    equil_pHvbc=mean(phVBC(:,8));
    
    pHnodes=[];
    for j=obsNnodes
        pHnodes=[pHnodes ; equil_pH1(j,:)];
    end
    pHnodes=pHnodes(:,8)';
    
    pHsub2=[];
    for j=NSubreg2
        pHsub2=[pHsub2 ; equil_pH1(j,:)];
    end
    pHsub2=mean(pHsub2(:,8));
    pHsub3=[];
    for j=NSubreg3
        pHsub3=[pHsub3 ; equil_pH1(j,:)];
    end
    pHsub3=mean(pHsub3(:,8));
    pHsub4=[];
    for j=NSubreg4
        pHsub4=[pHsub4 ; equil_pH1(j,:)];
    end
    pHsub4=mean(pHsub4(:,8));
    pHsub5=[];
    for j=NSubreg5
        pHsub5=[pHsub5 ; equil_pH1(j,:)];
    end
    pHsub5=mean(pHsub5(:,8));
    
    %===================================end of this part=====================
    files=dir('*.file');
    fname=files(1).name;
    airV=(V1-volume)/1000;
    %output matrix of cupSolution function that divides meq by cm^3 of water
    %cupConc   %dimensions fileN by 8 (#of solutes)
    %meq/liter to mol/liter
    units=[2000	2000	1000	1000	1000	2000	1000	1000];
    units=repmat(units,size(cupConc,1),1);
    cupConc=cupConc./units;
    
    fid = fopen(fname, 'w');
    fprintf(fid, 'solution 1\r\n-units mol/kgw\r\n-temp 20\r\n');
    fprintf(fid, '-water %10.8f\r\n',[volume(k)/1000]);
    fprintf(fid, '-ph %4.2f\r\n',pHsub3);
    fprintf(fid, 'Ca %11.9f\r\n',cupConc(k,1));
    %fprintf(fid, 'Ca %11.9f\r calcite 0\r\n',cupConc(k,1));
    fprintf(fid, 'Mg %11.9f\r charge\n',cupConc(k,2));
    fprintf(fid, 'Na %11.9f\r\n',cupConc(k,3));
    fprintf(fid, 'K %11.9f\r\n',cupConc(k,4));
    fprintf(fid, 'Alkalinity %11.9f\r as HCO3\r\n',cupConc(k,5));
    fprintf(fid, 'S(6) %11.9f\r as SO4\r\n',cupConc(k,6));
    fprintf(fid, 'Cl %11.9f\r\n',cupConc(k,7));
    fprintf(fid, 'end\r\n\r\nuse solution 1\r\ngas_phase 1\r\n-fixed_volume\r\n');
    fprintf(fid, '-volume %10.8f\r\n',airV(k));
    fprintf(fid, 'CO2(g) %10.8f\r\n',CO2(k));
    fprintf(fid, 'EQUILIBRIUM_PHASES 1\r\ncalcite 0 0\r\ngypsum 0 0\r\nend');
    
    folder=pwd;
    %a=['D:\Hydrus_simulations\SuctionCups_New\RunFiles\phreeqc\phreeqc.bat ' fname ' ' fname(1:end-5) '.out ' 'D:\Hydrus_simulations\SuctionCups_New\RunFiles\phreeqc\phreeqcUNSAT.dat'];
    a=['C:\Program Files\USGS\phreeqc-3.4.0-12927-x64\bin\phreeqc.bat ' fname ' ' fname(1:end-5) '.out ' 'C:\Program Files\USGS\phreeqc-3.4.0-12927-x64\database\phreeqc.dat'];
    %a=['C:\phreeqc\bin\phreeqc.bat volume1000_time87.File volume1000_time87.out C:\phreeqc\database\phreeqc.dat'];
    dos(a);
    
    %reading the output and saving the pH in equilibrium solution
    files=dir(['*.out']);
    
    fname=files(1).name;
    fid = fopen(fname, 'r');
    i = 1;
    lines{i} = fgets(fid);
    while ischar(lines{i})
        i = i + 1;
        lines{i} = fgets(fid);
    end
    fclose(fid);
    phreeqcLines=struct('resultsPH',lines);
    %these values need to be updated for each set of simulations because
    %values of ph and others might "move"
    v = lines{212};
    v1=str2num(v(48:52));
    pHout=v1;
    vv=lines{195};
    calcite=str2num(vv(8:end));
    vvv=lines{196};
    gypsum=str2num(vvv(7:end));
    if exist('PHREEQC_run')
        copyfile(fname,[folder '\PHREEQC_run\' 'phreeqc' num2str(k) '.out'])
    else
        mkdir('PHREEQC_run')
        copyfile(fname,[folder '\PHREEQC_run\' 'phreeqc' num2str(k) '.out'])
    end
    phreeqcR=struct('resultsPH',phreeqcLines);
else
    pHout=0;
    calcite=[0 0 0 0 0 0];
    gypsum=[0 0 0 0 0 0];
    equil_pHvbc=0;
    pHsub2=0;
    pHsub3=0;
    pHsub4=0;
    pHsub5=0;
    phreeqcR=struct('resultsPH',0);
    pHnodes=zeros(size(obsNnodes));
end
end

