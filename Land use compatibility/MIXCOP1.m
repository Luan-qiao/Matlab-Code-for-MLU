function TT=MIXCOP1(i,j,CUR1,C)%计算栅格单位为土地类型1的兼容度，其是5*5邻域；
I=i+2;
J=j+2;
T=0;

for ii=I-2:I+2
    for jj=J-2:J+2     
      d=(((ii-I)^2+(jj-J)^2)/8);  
    if(ii==I&&jj==J)
    continue
    end 
    if CUR1(ii,jj)==1||CUR1(ii,jj)==-9999
       T=T+d*C(1,1);
    elseif CUR1(ii,jj)==2
       T=T+d*C(1,2);
    elseif CUR1(ii,jj)==3
       T=T+d*C(1,3);
    elseif CUR1(ii,jj)==4
       T=T+d*C(1,4);
    elseif CUR1(ii,jj)==5
       T=T+d*C(1,5); 
    elseif CUR1(ii,jj)==6
       T=T+d*C(1,6);
    elseif CUR1(ii,jj)==7
       T=T+d*C(1,7);
    elseif CUR1(ii,jj)==8
       T=T+d*C(1,8); 
    elseif CUR1(ii,jj)==9
       T=T+d*C(1,9);
    elseif CUR1(ii,jj)==10
       T=T+d*C(1,10);
    elseif CUR1(ii,jj)==11
       T=T+d*C(1,11);
    end
    
   end
end

TT=T;
end









