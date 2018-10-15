function [VBC,obsNnodes,NSubreg2,NSubreg3,NSubreg4,NSubreg5]=nodesVBC(simulation,nodes)
%Get variable boundary defining nodes
folder=pwd; 
fid = fopen([folder simulation '1\DOMAIN.dat'], 'r');%CHECK that this file is updated!!!
i = 1;
lines{i} = fgets(fid);
while ischar(lines{i})
    i = i + 1;
    lines{i} = fgets(fid);
end
fclose(fid);
%builds a vector with the nodes at the VBC
VBC=[];
for ind = 7 : nodes+6
    v= lines{ind};
    C=strsplit(v,' ');
    if C{3}=='1'
    VBC=[VBC str2num(C{2})];
    end
end
subreg2=[];
subreg3=[];
subreg4=[];
subreg5=[];

for ind=nodes+9:(size(lines,2)-2)
    v= lines{ind};
    C=strsplit(v,' ');
    C6=C{6};
    if C6(1)=='2'
    subreg2=[subreg2 str2num(C{2})];
    end
    if C6(1)=='3'
    subreg3=[subreg3 str2num(C{2})];
    end
    if C6(1)=='4'
    subreg4=[subreg4 str2num(C{2})];
    end
    if C6(1)=='5'
    subreg5=[subreg5 str2num(C{2})];
    end
end

fid = fopen([folder simulation '1\meshtria.txt'], 'r');%CHECK that this file is updated!!!
i = 1;
lines{i} = fgets(fid);
while ischar(lines{i})
    i = i + 1;
    lines{i} = fgets(fid);
end
fclose(fid);
for i=1:size(subreg2,2)
    v= lines{nodes+4+subreg2(1,i)};
    C=strsplit(v,' ');
    subreg2(2:4,i)=[str2num(C{3}) str2num(C{4}) str2num(C{5})];
end
for i=1:size(subreg3,2)
    v= lines{nodes+4+subreg3(1,i)};
    C=strsplit(v,' ');
    subreg3(2:4,i)=[str2num(C{3}) str2num(C{4}) str2num(C{5})];
end
for i=1:size(subreg4,2)
    v= lines{nodes+4+subreg4(1,i)};
    C=strsplit(v,' ');
    subreg4(2:4,i)=[str2num(C{3}) str2num(C{4}) str2num(C{5})];
end
for i=1:size(subreg5,2)
    v= lines{nodes+4+subreg5(1,i)};
    C=strsplit(v,' ');
    subreg5(2:4,i)=[str2num(C{3}) str2num(C{4}) str2num(C{5})];
end
allN2=[subreg2(2,:) subreg2(3,:) subreg2(4,:)];
NSubreg2=unique(allN2);
allN3=[subreg3(2,:) subreg3(3,:) subreg3(4,:)];
NSubreg3=unique(allN3);
allN4=[subreg4(2,:) subreg4(3,:) subreg4(4,:)];
NSubreg4=unique(allN4);
allN5=[subreg5(2,:) subreg5(3,:) subreg5(4,:)];
NSubreg5=unique(allN5);

%node numbers of the observation nodes
fid = fopen([folder simulation '1\BOUNDARY.IN'], 'r');%CHECK that this file is updated!!!
i = 1;
idx=[];
lines{i} = fgets(fid);
while ischar(lines{i})
    i = i + 1;
    lines{i} = fgets(fid);
if strfind(lines{i},'Observation nodes')==1;
    nodeline=i;

end
end
%builds a vector with the nodes number of the observation nodes
v= lines{nodeline+1};
obsNnodes=str2num(v);

fclose(fid);

end