function TT=shouji(z,t,IDID,OD)
eu=IDID(z,2)+0.007016667;
ed=IDID(z,2)-0.007016667;
nu=IDID(z,3)+0.005566667;
nd=IDID(z,3)-0.005566667;
TT=0;
for i=1:t
    if (OD(i,2)>=ed & OD(i,2)<=eu & OD(i,3)>=nd & OD(i,3)<=nu)||(OD(i,5)>=ed & OD(i,5)<=eu & OD(i,6)>=nd & OD(i,6)<=nu)
       TT=TT+OD(i,7);
    end
end
end
