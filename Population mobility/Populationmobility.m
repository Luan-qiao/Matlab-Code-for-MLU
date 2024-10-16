tic;
CUR=arcgridread('point1.txt');
CC=xlsread('zuobiao1.xlsx', 'zuobiao');
[m,n]=size(CUR);

filename = 'D:\土地混合利用\新建文件夹\Population mobility\OD040324-040515.csv';%This is the folder path fot importing cell phone signaling data
delimiter = ',';
formatSpec = '%f%f%f%f%f%f%f%[^\n\r]';
fileID = fopen(filename,'r','n','UTF-8');
fseek(fileID, 3, 'bof');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);
fclose(fileID);
VarName1 = dataArray{:, 1};
VarName2 = dataArray{:, 2};
VarName3 = dataArray{:, 3};
VarName4 = dataArray{:, 4};
VarName5 = dataArray{:, 5};
VarName6 = dataArray{:, 6};
VarName7 = dataArray{:, 7};
clearvars filename delimiter formatSpec fileID dataArray ans;
OD=[VarName1 VarName2 VarName3 VarName4 VarName5 VarName6 VarName7];
[t,s]=size(VarName1);

for i=1:m
    for j=1:n
        if isnan(CUR(i,j))
        CUR(i,j)=-9999;    
        end
    end
end
MM=CUR;
for i=1:m
    for j=1:n
        if (CUR(i,j)~=-9999)   
        k=CUR(i,j);
        TT=shouji(k,t,CC,OD);
        MM(i,j)=TT;
        %MM(i,j)=KK;
        %MM(i,j)=100*TT/KK;
        end
    end
end
save ODresult.txt -ascii MM;
toc;