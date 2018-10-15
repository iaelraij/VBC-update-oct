function resultsSolLongR=soluteDataLongR(contRun)
tic
folder=pwd;
files=dir([folder contRun '*']);
filesN=size(files,1);
for p=2:filesN
    filename=[contRun num2str(p-1)];
    filesSol=dir([folder filename '\solute*.out']);
    soluteK=[];
    for k=1:8
        fnameSol=filesSol(k).name;
        fid = fopen([folder filename '\' fnameSol], 'r');
        i = 1;
        lines{i} = fgets(fid);
        while ischar(lines{i})
            i = i + 1;
            lines{i} = fgets(fid);
        end
        fclose(fid);
        data = [];
        for ind = 6 : i-2
            v = str2num(lines{ind});
            data = cat(1,data,v);
        end
        soluteK(:,(k*3-2):k*3)=[data(:,15),data(:,16),data(:,21)];
    end
    soluteK=[data(:,1) soluteK];
    solutesClean=zeros(1,size(soluteK,2));
    for k=1:(size(soluteK,1)-1)
        if mod(soluteK(k,1),1)==0 &&  soluteK(k,1)~=soluteK(k+1,1)
            solutesClean=[solutesClean ; soluteK(k,:)];
        end
    end
    solutesClean=[solutesClean;soluteK(end,:)];
    
    fid=fopen([folder filename '\v_mean.out']);
    i = 1;
    lines{i} = fgets(fid);
    while ischar(lines{i})
        i = i + 1;
        lines{i} = fgets(fid);
    end
    fclose(fid);
    Vmean = [];
    for ind = 14 : i-2
        v = str2num(lines{ind});
        if mod(v(1,1),10)==0
            Vmean = cat(1,Vmean,v);
        end
    end
    solutesShort=[];
    for j=1:(size(Vmean,1))
        solutesShort(j,:)=solutesClean(j*10+1,:);
    end
    irrShort=[];
    seepageShort=[];
    ScupShort=[];
    for x=1:8
        irrShort(:,x)=solutesShort(:,(x*3)+1);
        seepageShort(:,x)=solutesShort(:,(x*3));
        ScupShort(:,x)=solutesShort(:,(x*3)-1);
    end
    irrQ=repmat(Vmean(:,11),1,8);
    irrC=irrShort./irrQ;
    seepQ=repmat(Vmean(:,8),1,8);
    seepC=seepageShort./seepQ;
    ScupQ=repmat(Vmean(:,7),1,8);
    ScupC=ScupShort./ScupQ;
    
    fid=fopen([folder filename '\ObsNod.out']);
    i = 1;
    lines{i} = fgets(fid);
    while ischar(lines{i})
        i = i + 1;
        lines{i} = fgets(fid);
    end
    fclose(fid);
    obsN = [];
    for ind = 8 : i-2
        v = str2num(lines{ind});
        if mod(v(1,1),10)==0
            obsN = cat(1,obsN,v);
        end
    end
    
    resultsSolLongR(p-1).name=filename;
    resultsSolLongR(p-1).irrC=irrC;
    resultsSolLongR(p-1).seepC=seepC;
    resultsSolLongR(p-1).ScupC=ScupC;
    resultsSolLongR(p-1).irrQ=irrQ;
    resultsSolLongR(p-1).seepQ=seepQ;
    resultsSolLongR(p-1).ScupQ=ScupQ;
    resultsSolLongR(p-1).obsN=obsN;
    
end
save('resultsSolLongR','resultsSolLongR')
toc
end