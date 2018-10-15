function atmosphAll=buildAtmosphAll_ET(days,hourI,irrDur,hourS,dayET,ETdur,LF,ETarea,irrArea,ETi,soluteP,solPi,solPf,irr)
%============INPUTS===================%
% %building atmosphAll mat
% days=12;
% %irr time
% hourI=6;
% irrDur=1;
% %suction time
% hourS=6;
% %building vector with sinusoidal ET for 12 hours of ET
% %day ET in cm/day
% dayET=0.25;
%ETi=6;
% ETdur=12;
% LF=2;
% ETarea=10000;
% irrArea=1257;
%solutepulse in days
% solPi=2;
% solPf=3;
load('pos_data')
ETmin=pos_data*(dayET*3.141593/1440);
if dayET>0
irrH=dayET*LF*ETarea/irrArea/-60;
else
    irrH=irr;
end
%=====================================%
%total time in minutes
time=days*60*24;
atmosphAll=(1:time)';
%if there is a solutepulse in minutes
%solution concentration composition (irrigation)
if soluteP==1;
   solPimin=(60*24)*(solPi-1);
solPfmin=(60*24)*(solPf);
atmosphAll(:,4)=2;
atmosphAll(solPimin:solPfmin,4)=1;
else
    atmosphAll(:,4)=1;
end
%irrigation
atmosphAll(:,2)=zeros(1,time);
%constant head when there is no flow
atmosphAll(:,3)=100000000;
atmosphAll(1:ETi*60,5)=0;

for i=1:days
    irrI=(hourI*60+1)+((i-1)*60*24);
    irrF=irrI+(irrDur*60-1);
    ETf=ETi*60+(ETdur*60-1);
    atmosphAll(irrI:irrF,2)=irrH;
    atmosphAll((hourS*60+1)+((i-1)*60*24),3)=-500;
    atmosphAll((ETi*60):ETf,5)=ETmin';
end
%save('atmosphAll','atmosphAll');
end
