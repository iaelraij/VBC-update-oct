function[balanceI,balanceF]=readBalance_multi(fname)

fid = fopen([fname '\balance.out'], 'r');
i = 1;
lines{i} = fgets(fid);
while ischar(lines{i})
    i = i + 1;
    lines{i} = fgets(fid);
end
fclose(fid);
%time 0
balanceI = [];
%if we have solutes then
for ind = 15:28
    v = lines{ind};
    v1=str2num(v(21:end));
    balanceI = cat(1,balanceI,v1);
end
%if there are no solutes then
% for ind = 15:18
%     v = lines{ind};
%     v1=str2num(v(21:32));
%     data2 = cat(1,data2,v1);
% end
%time 1
%if we don't have solutes then ind=26:length(lines)-4
 balanceF = [];
for ind = 35:length(lines)-8
    v = lines{ind};
    v2=str2num(v(21:end));
    balanceF =cat(1,balanceF,v2);
end
end