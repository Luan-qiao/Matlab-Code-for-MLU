function TT=POI(i,j,CUR1,CC)
I=i+2;
J=j+2;
D=zeros(1,16);
TT=0;
for zz=1:16
  for ii=I-2:I+2
    for jj=J-2:J+2  
      if CUR1(ii,jj,zz)~=-9999
      %D(zz)=D(zz)+1;
      D(zz)=1;
      break;
      end 
    end
  end
end

for p=1:16
    for q=1:16
    if p~=q
    TT=TT+CC(p,q)*D(p)*D(q);   
    end
    end
end

end

