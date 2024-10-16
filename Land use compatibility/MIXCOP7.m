function TT=MIXCOP7(i,j,CUR1,C)%计算栅格单位为土地类型7的兼容度，其是5*5邻域；
I=i+2;
J=j+2;
T=0;

for ii=I-2:I+2
    for jj=J-2:J+2
    d=(((ii-I)^2+(jj-J)^2)/8);
      
    if(ii==I&&jj==J)
    continue
    end 
    
    if CUR1(ii,jj)==1
       T=T+d*C(7,1);
    elseif CUR1(ii,jj)==2
       T=T+d*C(7,2);
    elseif CUR1(ii,jj)==3
       T=T+d*C(7,3);
    elseif CUR1(ii,jj)==4
       T=T+d*C(7,4);
    elseif CUR1(ii,jj)==5
       T=T+d*C(7,5); 
    elseif CUR1(ii,jj)==6
       T=T+d*C(7,6);
    elseif CUR1(ii,jj)==7||CUR1(ii,jj)==-9999
       T=T+d*C(7,7);
    elseif CUR1(ii,jj)==8
       T=T+d*C(7,8); 
    elseif CUR1(ii,jj)==9
       T=T+d*C(7,9);
    elseif CUR1(ii,jj)==10
       T=T+d*C(7,10);
    elseif CUR1(ii,jj)==11
       T=T+d*C(7,11);
    end
    
   end
end
 
TT=T;
end









