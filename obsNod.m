function ObsN=obsNod(fname,k,obsNnodes)
if obsNnodes==0
    ObsN = 0;
else
fid = fopen([fname '\ObsNod.out'], 'r');
i = 1;
lines{i} = fgets(fid);
while ischar(lines{i})
    i = i + 1;
    lines{i} = fgets(fid);
end
fclose(fid);
ObsN = [];
v = str2num(lines{8});
ObsN = cat(1,ObsN,v);
ObsN(:,1)=k;
end
end