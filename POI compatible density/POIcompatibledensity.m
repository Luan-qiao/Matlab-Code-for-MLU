tic;
CUR(:,:,1)=arcgridread('1binguan.txt');
CUR(:,:,2)=arcgridread('2canyin.txt');
CUR(:,:,3)=arcgridread('3gouwu.txt');
CUR(:,:,4)=arcgridread('4jiaotong.txt');
CUR(:,:,5)=arcgridread('5lvyou.txt');
CUR(:,:,6)=arcgridread('6qiche.txt');
CUR(:,:,7)=arcgridread('7shenghuo.txt');
CUR(:,:,8)=arcgridread('8xiuxian.txt');
CUR(:,:,9)=arcgridread('9yiliao.txt');
CUR(:,:,10)=arcgridread('10dichan.txt');
CUR(:,:,11)=arcgridread('11gongsi.txt');
CUR(:,:,12)=arcgridread('12jiaoyu.txt');
CUR(:,:,13)=arcgridread('13jinrong.txt');
CUR(:,:,14)=arcgridread('14shangwu.txt');
CUR(:,:,15)=arcgridread('15wenhua.txt');
CUR(:,:,16)=arcgridread('16zhengfu.txt');
REG=arcgridread('current50.txt');%Read the status quo map
CC=xlsread('biaoge.xlsx', 'sheet2');%Read compatibility coefficient matrix£»
[m,n,z]=size(CUR);

for i=1:m
    for j=1:n
        for z=1:16
          if isnan(CUR(i,j,z)) % if it is NaN,then replace by -9999
          CUR(i,j,z)=-9999;
          end
        end
    end
end

for i=1:m
    for j=1:n
        if isnan(REG(i,j)) % if it is NaN,then replace by -9999
        REG(i,j)=-9999;
        end
    end
end
MM=REG;%this is matarix of output

CUR1=ones(m+4,n+4,z);
a=-9999*ones(2,n);
b=-9999*ones(m+4,2);

XX=[a;CUR(:,:,1);a];
CUR1(:,:,1)=[b XX b];
XX=[a;CUR(:,:,2);a];
CUR1(:,:,2)=[b XX b];
XX=[a;CUR(:,:,3);a];
CUR1(:,:,3)=[b XX b];
XX=[a;CUR(:,:,4);a];
CUR1(:,:,4)=[b XX b];
XX=[a;CUR(:,:,5);a];
CUR1(:,:,5)=[b XX b];
XX=[a;CUR(:,:,6);a];
CUR1(:,:,6)=[b XX b];
XX=[a;CUR(:,:,7);a];
CUR1(:,:,7)=[b XX b];
XX=[a;CUR(:,:,8);a];
CUR1(:,:,8)=[b XX b];
XX=[a;CUR(:,:,9);a];
CUR1(:,:,9)=[b XX b];
XX=[a;CUR(:,:,10);a];
CUR1(:,:,10)=[b XX b];
XX=[a;CUR(:,:,11);a];
CUR1(:,:,11)=[b XX b];
XX=[a;CUR(:,:,12);a];
CUR1(:,:,12)=[b XX b];
XX=[a;CUR(:,:,13);a];
CUR1(:,:,13)=[b XX b];
XX=[a;CUR(:,:,14);a];
CUR1(:,:,14)=[b XX b];
XX=[a;CUR(:,:,15);a];
CUR1(:,:,15)=[b XX b];
XX=[a;CUR(:,:,16);a];
CUR1(:,:,16)=[b XX b];

for i=1:m
  for j=1:n
     if REG(i,j)~=-9999
     TT=POI(i,j,CUR1,CC);
     MM(i,j)=TT;
     end
  end
end

save POIresult.txt -ascii MM;
toc;