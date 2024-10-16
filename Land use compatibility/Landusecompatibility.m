tic;
CUR=arcgridread('current50.txt');%read land use status map
[m,n]=size(CUR);%rows and columns
for i=1:m
    for j=1:n
        if isnan(CUR(i,j)) % if it is NaN,then replace by -9999
            CUR(i,j)=-9999;
        end
    end
end

a=-9999*ones(2,n);
CUR1=[a;CUR;a];
b=-9999*ones(m+4,2);
CUR1=[b CUR1 b];%the matrix is m+4 rows and n+4 columns;
C=xlsread('copCC.xlsx', 'sheet1');%Read compatibility coefficient matrix£»
MM=CUR;%Predefined output result matrix£»

for i=1:m
  for j=1:n  
    if CUR(i,j)==1
    TT=MIXCOP1(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==2
    TT=MIXCOP2(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==3
    TT=MIXCOP3(i,j,CUR1,C); 
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==4
    TT=MIXCOP4(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==5
    TT=MIXCOP5(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==6
    TT=MIXCOP6(i,j,CUR1,C); 
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==7
    TT=MIXCOP7(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==8
    TT=MIXCOP8(i,j,CUR1,C); 
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==9
    TT=MIXCOP9(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==10
    TT=MIXCOP10(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    elseif CUR(i,j)==11
    TT=MIXCOP11(i,j,CUR1,C);
    MM(i,j)=1000*TT;
    end
  end
end

save result.txt -ascii MM;
toc;


