% [seepC_LF150,ScupC_LF150,time_LF150,general_data_LF150,ScupCf_LF150,timeF_LF150,...
%     obsNodf_LF150,Ca_LF150,K_LF150,Cl_LF150,Mg_LF150,Na_LF150,S_LF150,...
%     PHcup_LF150,PHsoil_LF150,calcite_LF150,gypsum_LF150,...
%     timePhreeqcLong_LF150,CaLong_LF150,KLong_LF150,ClLong_LF150,MgLong_LF150,...
%     NaLong_LF150,SLong_LF150,v_mean_LF150,ObsNlong_LF150,avgObsNlong_LF150,...
%obsNchem_LF150,ScupChem_LF150,SeepQ_LF150,Scupmeqcm3_LF150,balanceConc_LF150,balanceConcDay_LF150]...
%=readResultsFinal(finalresults_LF150,resultsSolLongR_LF150);

function [seepC,ScupC,time,general_data,ScupCf,timeF,obsNodf,Ca,K,Cl,...
    Mg,Na,S,PHcup,PHsoil,calcite,gypsum,timePhreeqcLong,...
    CaLong,KLong,ClLong,MgLong,NaLong,SLong,v_mean,ObsNlong,avgObsNlong,...
    obsNchem,ScupChem,SeepQ,Scupmeqcm3,SoluteBal]=readResultsFinalold(finalresults,resultsSolLongR)

seepC=finalresults(1).seepConc;
ScupC=finalresults(1).cupConc;
time=10.*(1:size(seepC,1))';
general_data=[];
ObsNlong=[];
v_mean=[];
SeepQ=finalresults(1).v_mean(:,8);
SoluteBal=struct('VolW',[],'Ca',[],'Mg',[],'Na',[],'K',[],'Alk',[],'SO4',[],'Cl',[],'tracer',[]);
for i=1:size(resultsSolLongR,2)
    %seepC
    seepCmin=finalresults(i+1).seepConc;
    seepClong=resultsSolLongR(i).seepC;
    seepC=[seepC ; seepCmin; seepClong];
    %ScupC
    ScupCmin=finalresults(i+1).cupConc;
    final=floor(size(finalresults(i+1).phreeqcAll,1)/10)*10;
    ScupCf(i,:)=finalresults(i+1).cupConc(final,:);
    timeF(i,:)=finalresults(i+1).general_data(final,1);
    %ScupCf(i,:)=finalresults(i+1).cupConc(end,:);
    %timeF(i,:)=finalresults(i+1).general_data(end,1);
    obsNodf(i,:)=finalresults(i+1).ObsN(final,:);
    ScupClong=resultsSolLongR(i).ScupC;
    SeepQlong=resultsSolLongR(i).seepQ(:,1);
    SeepQmin=finalresults(i+1).v_mean(:,8);
    ScupC=[ScupC; ScupCmin; ScupClong];
    SeepQ=[SeepQ ;SeepQmin ;SeepQlong];
    %gerneraldata %time
    general=finalresults(i+1).general_data;
    obs=finalresults(i+1).ObsN;
    ObsNlong=[ObsNlong ;obs];
    general_data=[general_data ; general];
    vmean1=finalresults(i+1).v_mean;
    v_mean=[v_mean ; vmean1];
    time=[time ; general(:,1)];
    for j=1:size(seepClong,1)
        time=[time ;time(end)+10];
    end
    balanceConcVol=[];
    volW=[];
    for q=1:size(finalresults(i+1).phreeqcAll,1)
        %selecting only the time=1 concentrations for each minute of
        %simulation for all subregions
        balanceConcVol=finalresults(i+1).balance((q-1)*13+5:(q-1)*13+12,7:12);
        SoluteBal(i).VolW(q,:)=finalresults(i+1).balance((q-1)*13+2,7:12);
        %balanceConc1((q-1)*8+1:(q-1)*8+8,:)=balanceConcVol./repmat(volW(q,:),8,1);
        SoluteBal(i).Ca(q,:)=finalresults(i+1).balance((q-1)*13+5,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).Mg(q,:)=finalresults(i+1).balance((q-1)*13+6,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).Na(q,:)=finalresults(i+1).balance((q-1)*13+7,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).K(q,:)=finalresults(i+1).balance((q-1)*13+8,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).Alk(q,:)=finalresults(i+1).balance((q-1)*13+9,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).SO4(q,:)=finalresults(i+1).balance((q-1)*13+10,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).Cl(q,:)=finalresults(i+1).balance((q-1)*13+11,7:12)./SoluteBal(i).VolW(q,:);
        SoluteBal(i).tracer(q,:)=finalresults(i+1).balance((q-1)*13+12,7:12)./SoluteBal(i).VolW(q,:);
    end
    soilBf_Ca(i,:)=SoluteBal(i).Ca(final,:);
    soilBf_Mg(i,:)=SoluteBal(i).Mg(final,:);
    soilBf_Na(i,:)=SoluteBal(i).Na(final,:);
    soilBf_K(i,:)=SoluteBal(i).K(final,:);
    soilBf_Alk(i,:)=SoluteBal(i).Alk(final,:);
    soilBf_SO4(i,:)=SoluteBal(i).SO4(final,:);
    soilBf_Cl(i,:)=SoluteBal(i).Cl(final,:);
    soilBf_tracer(i,:)=SoluteBal(i).tracer(final,:);

end
time(:,2)=time/60/24;
timeF(:,2)=timeF(:,1)/60/24;
%==============PHREEQC solute concentrations==============================
structure2=struct('Ca', 0,'Cl', 0,'K',0,'Mg',0,'Na',0,'S', 0);
for i=2:size(finalresults,2)
    k=floor(size(finalresults(i).phreeqcAll,1)/10);
    for j=203:208
        c=finalresults(i).phreeqcAll(k*10).resultsPH(j).resultsPH;
        v(j-202,:)=strsplit(c,' ');
    end
    structure1=struct(strtrim(v{1,1}),str2num(v{1,2}),...
        strtrim(v{2,1}),str2num(v{2,2}),...
        strtrim(v{3,1}),str2num(v{3,2}),...
        strtrim(v{4,1}),str2num(v{4,2}),...
        strtrim(v{5,1}),str2num(v{5,2}),...
        strtrim(v{6,1}),str2num(v{6,2}));
    structure2=[structure2 structure1];
    PHcup(i-1)=finalresults(i).general_data(k*10,3);
    PHsoil(i-1)=finalresults(i).general_data(k*10,2);
    calcite(i-1)=finalresults(i).general_data(k*10,7);
    gypsum(i-1)=finalresults(i).general_data(k*10,8);
end
for i=1:size(structure2,2)
    Ca(i)=structure2(i).Ca;
    Cl(i)=structure2(i).Cl;
    K(i)=structure2(i).K;
    Mg(i)=structure2(i).Mg;
    Na(i)=structure2(i).Na;
    S(i)=structure2(i).S;
end
Ca(:,1)=[];
Mg(:,1)=[];
S(:,1)=[];
Cl(:,1)=[];
K(:,1)=[];
Na(:,1)=[];
Ca(2,:)=Ca(1,:).*2000;
Mg(2,:)=Mg(1,:).*2000;
S(2,:)=S(1,:).*2000;
Cl(2,:)=Cl(1,:).*1000;
Na(2,:)=Na(1,:).*1000;
K(2,:)=K(1,:).*1000;
%++++++++Saving all the solute concentrations in each vacuum event+++++++++
timePhreeqcLong=[];
structure2long=struct('Ca', 0,'Cl', 0,'K',0,'Mg',0,'Na',0,'S', 0);
for i=2:size(finalresults,2)
    for k=1:floor(size(finalresults(i).phreeqcAll,1)/10);
        for j=203:208
            c=finalresults(i).phreeqcAll(k*10).resultsPH(j).resultsPH;
            v(j-202,:)=strsplit(c,' ');
        end
        structure1long=struct(strtrim(v{1,1}),str2num(v{1,2}),...
            strtrim(v{2,1}),str2num(v{2,2}),...
            strtrim(v{3,1}),str2num(v{3,2}),...
            strtrim(v{4,1}),str2num(v{4,2}),...
            strtrim(v{5,1}),str2num(v{5,2}),...
            strtrim(v{6,1}),str2num(v{6,2}));
        structure2long=[structure2long structure1long];
        timePhreeqcLong=[timePhreeqcLong finalresults(i).general_data(k*10,1)];
    end
end
for i=1:size(structure2long,2)
    CaLong(i)=structure2long(i).Ca;
    ClLong(i)=structure2long(i).Cl;
    KLong(i)=structure2long(i).K;
    MgLong(i)=structure2long(i).Mg;
    NaLong(i)=structure2long(i).Na;
    SLong(i)=structure2long(i).S;
end
CaLong(:,1)=[];
MgLong(:,1)=[];
SLong(:,1)=[];
ClLong(:,1)=[];
KLong(:,1)=[];
NaLong(:,1)=[];
CaLong(2,:)=CaLong(1,:).*2000;
MgLong(2,:)=MgLong(1,:).*2000;
SLong(2,:)=SLong(1,:).*2000;
ClLong(2,:)=ClLong(1,:).*1000;
NaLong(2,:)=NaLong(1,:).*1000;
KLong(2,:)=KLong(1,:).*1000;
%=====================================================================
%---------Averaging observation nodes-------------------%
nodeNumber=((size(obsNodf,2))-1)/11;
for k=1:size(obsNodf,1)
    for j=1:nodeNumber
        obs2(j,:)=obsNodf(k,((11*(j-1))+2):(11*j+1));
        h_long(:,j)=ObsNlong(:,(11*(j-1))+2);
        th_long(:,j)=ObsNlong(:,(11*(j-1))+3);
        temp_long(:,j)=ObsNlong(:,(11*(j-1))+4);
        Ca_long(:,j)=ObsNlong(:,(11*(j-1))+5);
        Mg_long(:,j)=ObsNlong(:,(11*(j-1))+6);
        Na_long(:,j)=ObsNlong(:,(11*(j-1))+7);
        K_long(:,j)=ObsNlong(:,(11*(j-1))+8);
        alk_long(:,j)=ObsNlong(:,(11*(j-1))+9);
        S_long(:,j)=ObsNlong(:,(11*(j-1))+10);
        Cl_long(:,j)=ObsNlong(:,(11*(j-1))+11);
    end
    ObsNlong(:,1)=general_data(:,1);
    avgObsN(k,:)=mean(obs2);
end
avgObsNlong(:,1)=general_data(:,1);
avgObsNlong(:,2)=mean(h_long,2);
avgObsNlong(:,3)=mean(th_long,2);
avgObsNlong(:,4)=mean(temp_long,2);
avgObsNlong(:,5)=mean(Ca_long,2);
avgObsNlong(:,6)=mean(Mg_long,2);
avgObsNlong(:,7)=mean(Na_long,2);
avgObsNlong(:,8)=mean(K_long,2);
avgObsNlong(:,9)=mean(alk_long,2);
avgObsNlong(:,10)=mean(S_long,2);
avgObsNlong(:,11)=mean(Cl_long,2);
%building a structure with all the data for each sampling event for the
%observation nodes
obsNchem=struct('time',[],'h',[],'th',[],'temp',[],'Ca',[],'Mg',[],'Na',[],...
    'K',[],'alk',[],'S',[],'Cl',[]);
for i=1:size(resultsSolLongR,2)
    obs3=finalresults(i+1).ObsN;
    h_long2=[];
    th_long2=[];
    temp_long2=[];
    Ca_long2=[];
    Mg_long2=[];
    Na_long2=[];
    K_long2=[];
    alk_long2=[];
    S_long2=[];
    Cl_long2=[];
    for j=1:nodeNumber
        h_long2(:,j)=obs3(:,(11*(j-1))+2);
        th_long2(:,j)=obs3(:,(11*(j-1))+3);
        temp_long2(:,j)=obs3(:,(11*(j-1))+4);
        Ca_long2(:,j)=obs3(:,(11*(j-1))+5);
        Mg_long2(:,j)=obs3(:,(11*(j-1))+6);
        Na_long2(:,j)=obs3(:,(11*(j-1))+7);
        K_long2(:,j)=obs3(:,(11*(j-1))+8);
        alk_long2(:,j)=obs3(:,(11*(j-1))+9);
        S_long2(:,j)=obs3(:,(11*(j-1))+10);
        Cl_long2(:,j)=obs3(:,(11*(j-1))+11);
    end
    obsNchem(i).time=finalresults(i+1).general_data(:,1);
    obsNchem(i).h=mean(h_long2,2);
    obsNchem(i).th=mean(th_long2,2);
    obsNchem(i).temp=mean(temp_long2,2);
    obsNchem(i).Ca=mean(Ca_long2,2);
    obsNchem(i).Mg=mean(Mg_long2,2);
    obsNchem(i).Na=mean(Na_long2,2);
    obsNchem(i).K=mean(K_long2,2);
    obsNchem(i).alk=mean(alk_long2,2);
    obsNchem(i).S=mean(S_long2,2);
    obsNchem(i).Cl=mean(Cl_long2,2);
end
Ca(3,:)=[avgObsN(:,4)'];
Mg(3,:)=[avgObsN(:,5)'];
Na(3,:)=[avgObsN(:,6)'];
K(3,:)=[avgObsN(:,7)'];
S(3,:)=[avgObsN(:,9)'];
Cl(3,:)=[avgObsN(:,10)'];
Ca(4,:)=[Ca(2,:)./Ca(3,:)];
Mg(4,:)=(Mg(2,:)./Mg(3,:));
Na(4,:)=(Na(2,:)./Na(3,:));
K(4,:)=(K(2,:)./K(3,:));
S(4,:)=(S(2,:)./S(3,:));
Cl(4,:)=(Cl(2,:)./Cl(3,:));
%soil concentrations in 1 cm radius from the cup
Ca(5,:)=[soilBf_Ca(:,4)'];
Mg(5,:)=[soilBf_Mg(:,4)'];
Na(5,:)=[soilBf_Na(:,4)'];
K(5,:)=[soilBf_K(:,4)'];
S(5,:)=[soilBf_SO4(:,4)'];
Cl(5,:)=[soilBf_Cl(:,4)'];
%soil concentrations in 2 cm radius from the cup
Ca(6,:)=[soilBf_Ca(:,5)'];
Mg(6,:)=[soilBf_Mg(:,5)'];
Na(6,:)=[soilBf_Na(:,5)'];
K(6,:)=[soilBf_K(:,5)'];
S(6,:)=[soilBf_SO4(:,5)'];
Cl(6,:)=[soilBf_Cl(:,5)'];
%soil concentrations in 3 cm radius from the cup
Ca(7,:)=[soilBf_Ca(:,6)'];
Mg(7,:)=[soilBf_Mg(:,6)'];
Na(7,:)=[soilBf_Na(:,6)'];
K(7,:)=[soilBf_K(:,6)'];
S(7,:)=[soilBf_SO4(:,6)'];
Cl(7,:)=[soilBf_Cl(:,6)'];
v_mean(:,1)=general_data(:,1);
%===building structure with all the daily values of the chemistry inside
%the suction cup 'ScupChem'
timePhreeqcDay=[];
ScupChem=struct('time',[],'Ca',[],'Mg',[],'Na',[],'K',[],'S',[],'Cl',[]);
for i=2:size(finalresults,2)
    CaDay=[];
    ClDay=[];
    KDay=[];
    MgDay=[];
    NaDay=[];
    SDay=[];
    timePhreeqcDay=[];
    structure2long=struct('Ca', 0,'Cl', 0,'K',0,'Mg',0,'Na',0,'S', 0);
    for k=1:floor(size(finalresults(i).phreeqcAll,1)/10);
        for j=203:208
            %c=finalresults(i).phreeqcAll(k*10).resultsPH(ind).resultsPH;
            c=finalresults(i).phreeqcAll(k*10).resultsPH(j).resultsPH;
            v(j-202,:)=strsplit(c,' ');
        end
        structure1long=struct(strtrim(v{1,1}),str2num(v{1,2}),...
            strtrim(v{2,1}),str2num(v{2,2}),...
            strtrim(v{3,1}),str2num(v{3,2}),...
            strtrim(v{4,1}),str2num(v{4,2}),...
            strtrim(v{5,1}),str2num(v{5,2}),...
            strtrim(v{6,1}),str2num(v{6,2}));
        structure2long=[structure2long structure1long];
        timePhreeqcDay=[timePhreeqcDay finalresults(i).general_data(k*10,1)];
        for f=2:size(structure2long,2)
            CaDay(f-1)=structure2long(f).Ca;
            ClDay(f-1)=structure2long(f).Cl;
            KDay(f-1)=structure2long(f).K;
            MgDay(f-1)=structure2long(f).Mg;
            NaDay(f-1)=structure2long(f).Na;
            SDay(f-1)=structure2long(f).S;
        end
    end
    ScupChem(i-1).time=timePhreeqcDay';
    ScupChem(i-1).Ca=CaDay.*2000';
    ScupChem(i-1).Mg=MgDay.*2000';
    ScupChem(i-1).Na=NaDay.*1000';
    ScupChem(i-1).K=KDay.*1000';
    ScupChem(i-1).S=SDay.*2000';
    ScupChem(i-1).Cl=ClDay.*1000';
end
Scupmeqcm3=[Ca(2,:);Mg(2,:);Na(2,:);K(2,:);PHcup;S(2,:);Cl(2,:)];

end