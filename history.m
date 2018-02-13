%================week2===================
i1=imread('week2-1.gif');
i2=im2double(i1);
x1=1/9
rational x = 1/9
delete x1
x1=sym(1/9)
myfilter1=[1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9]
myfilter2=[0.04, 0.04, 0.04, 0.04, 0.04;0.04, 0.04, 0.04, 0.04, 0.04;0.04, 0.04, 0.04, 0.04, 0.04;0.04, 0.04, 0.04, 0.04, 0.04;0.04, 0.04, 0.04, 0.04, 0.04]
res1=imfilter(i2,myfilter1,'replicate')
res2=imfilter(i2,myfilter2,'replicate');
test1=5;
test1+=5
test1 = test1 + 5
MSE1=0
MSE2=0;
for i=1:255
for j=1:255
MSE1=MSE1+(i2(i,j)-myfilter1(i,j))^2;
end
MSE1=0;
for i=1:255
for j=1:255
MSE1=MSE1+(i2(i,j)-res1(i,j))^2;
end
PSNR1=10*log10(255^2/MSE1);
for i=1:255
for j=1:255
MSE2=MSE2+(i2(i,j)-res2(i,j))^2;
end
PSNR2=10*log10(255^2/MSE2);
diary week2.m
prefdir
diary 1.m
%================week3===================
io=imread('week3-1.jpg');
id=im2double(io);
myfilter=[1/9,1/9,1/9;1/9,1/9,1/9;1/9,1/9,1/9]
imgf=imfilter(id,myfilter,'replicate');
imgf(2:2:end,2:2:end)=[];
imgf(2:2:end,:)=[];
imgf(:,2:2:end)=[];
lrimg=zero(2,3)
lrimg=zeros(359,479);
for i=1:2:359
for j=1:2:479
lrimg(i,j)=imgf((i+1)/2,(j+1)/2);
end
myfilter2=[0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25]
finalImg=imfilter(lrimg,myfilter2);
mse=0;
for i=1:359
for j=1:479
mse=mse+(id(i,j)-finalImg(i,j))^2;
end
temp=mse
mse=mse/(359*479);
psnr=10*log10(255^2/mse);
psnr=10*log10(255^2/temp);
test=zeros(2,3)
clear test
clear
%================week4===================
block1=[1,1,2,2;1,1,2,2;2,2,3,4;2,2,5,6];
block2=[2,2,1,1;2,2,2,2;2,2,6,4;2,2,5,3];
mse=immse(block1,block2);
for i=1:4
for j=1:4
temp=temp+(block1(i,j)-block2(i,j))^2;
end
temp=0
for i=1:4
for j=1:4
temp=temp+(block1(i,j)-block2(i,j))^2;
end
clear
frame1=imread('week4-1.jpg');
frame2=imread('week4-2.jpg');
i1=im2double(frame1);
i2=im2double(frame2);
targetBlock=i2(65:81,96:112);
targetBlock=i2(65:96,81:112);
res=0;
indexX=0;
indexY=0;
for i=1:257
for j=1:321
temp=0;
for i=1:257
for j=1:321
temp=0;
for k=i:(i+31)
for l=j:(j+31)
temp=temp+abs(i1(k,l)-targetBlock(k-i+1,l-j+1));
end
if (res==0 | temp<res)
res=temp;
indexX=i;
indexY=j;
end
sumof=indexX+indexY
res
res/(32*32)
i3=imdouble(frame1);
i3=double(frame1);
clear i3
i1=double(frame1);
i2=double(frame2);
targetBlock=i2(65:96,81:112);
for i=1:257
for j=1:321
temp=0;
for k=i:(i+31)
for l=j:(j+31)
temp=temp+abs(i1(k,l)-targetBlock(k-i+1,l-j+1));
end
end
if (res==0 | temp<res)
res=temp;
indexX=i;
indexY=j;
end
end
end
res/(32*32)
clear i1
clear i2
clear
frame1=imread('week4-1.jpg');
frame2=imread('week4-2.jpg');
i1=im2double(frame1);
i2=im2double(frame2);
targetBlock=i2(65:81,96:112);
targetBlock=i2(65:96,81:112);
res=0;
indexX=0;
indexY=0;
clear
frame1=imread('week4-1.jpg');
frame2=imread('week4-2.jpg');
i1=double(frame1);
i2=double(frame2);
targetBlock=i2(65:81,96:112);
targetBlock=i2(65:96,81:112);
res=0;
indexX=0;
indexY=0;
for i=1:257
for j=1:321
temp=0;
for k=i:(i+31)
for l=j:(j+31)
temp=temp+abs(i1(k,l)-targetBlock(k-i+1,l-j+1));
end
end
if (res==0 | temp<res)
res=temp;
indexX=i;
indexY=j;
end
end
end
res/(32*32)
clear
%===================week5====================
raw=imread('week5-1.jpg');
img=double(raw);
imshow(img);
test=[1,2,3,4,5];
test.*2
test=[1,2,3;4,5,6];
test.+3
test.-5
test./3
test+4
test/3
img = img/255;
imshow(img);
clear img
img=double(raw);
medimg=medfilt2(img);
nmedimg=medimg/255;
imshow(nmedimg);
nmedimg2=medfilt2(nmedimg);
imshow(nmedimg2);
clear nmedimg2
medimg2=medfilt2(medimg);
noiseFreeImg=imread('week5-2.jpg');
DNFimg=double(noiseFreeImg);
MSE=0
for i=1:240
for j=1:320
MSE=MSE+(img(i,j)-DNFimg(i,g))^2;
end
for i=1:240
for j=1:320
MSE=MSE+(img(i,j)-DNFimg(i,j))^2;
end
end
MSE=MSE/(240*320)
PSNR=10*log10(255^2/MSE)
MSE2=0;
MSE3=0;
for i=1:240
for j=1:320
MSE2=MSE2+(medimg(i,j)-DNFimg(i,j))^2;
MSE3=MSE3+(medimg2(i,j)-DNFimg(i,j))^2;
end
PSNR2=10*log10(255^2/MSE2);
PSNR3=10*log10(255^2/MSE3);
MSE2=MSE2/(240*320);
MSE3=MSE3/(240*320);
PSNR2=10*log10(255^2/MSE2);
PSNR3=10*log10(255^2/MSE3);
clear
%=====================week6======================
inverse_filtering
clear
inverse_filtering
clear
inverse_filtering
%==================week7==================
wrapper
%==================week8===================
clear
img=imread('week8-1.bmg');
img=imread('week8-1.bmp');
proba=zeros(256);
clear proba
proba=zeros(256,1);
proba(2)=23;
proba(2)=0;
for i=1:256
for j=1:256
proba(img(i,j))=proba(img(i,j))+1;
end
clear proba
proba=zeros(256,1);
for i=1:256
for j=1:256
proba(img(i,j)+1)=proba(img(i,j)+1)+1;
end
end
proba/(256^2);
proba./(256^2);
test=zeros(5,1);
test+1;
proba/256;
test=test+51;
proba=proba/(256^2);
log2(4)
res=0;
for i=1:256
res=res-proba(i)*log2(proba(i));
end
res=0;
proba=zeros(256,1);
for i=1:256
for j=1:256
proba(img(i,j))=proba(img(i,j))+1;
end
end
proba=zeros(256,1);
for i=1:256
for j=1:256
proba(img(i,j)+1)=proba(img(i,j)+1)+1;
end
end
for i=1:256
temp=proba(i)/(256^2)*log2(proba(i)/(256^2));
res=res-temp;
end
%=======================week9===========================
clear
img=imread('week9-1.bmp')
imwrite(img,'week9-res','jpg','quality',10);
img2=imread('week9-res.jpeg');
img=double(img);
img2=double(img2);
mse=0;
for i=1:256
for j=1:256
mse=mse+(img(i,j)-img2(i,j))^2;
end
psnr=10*log10(255^2/mse);
clear
img=imread('week9-1.bmp');
imwrite(img,'week9-res.jpg','jpg','quality',10);
img2=imread('week9-res.jpg');
dimg1=double(img);
dimg2=double(img2);
mse=0;
for i=1:256
for j=1:256
mse=mse+(dimg1(i,j)-dimg2(i,j))^2;
end
end
mse=mse/(256^2);
psnr=10*log10(255^2/mse)
clear
%=============week10==============
week10_main
clear
%=================week11=================
motion_ADI
%==============week12===============
clear
b=[−2,−6,−9,1,8,10,1,−9,−4,−3]T
b=[−2,−6,−9,1,8,10,1,−9,−4,−3]'
b=[-2,-6,-9,1,8,10,1,-9,-4,-3]';
sin pi
sin(pi)
sin(0)
sin(30)
sin(1.6)
A=zeros(10,10);
I=eye(10,10);
S=3;
for i=1:10
for j=1:10
A(i,j)=sin(i+j);
end
A=A.+I;
A=A+I;
[x]=OMP(S,b,A);
[x]=omp(S,b,A);
t=x'
t=b'
clear t
t=b.'
[x]=omp(S,t,A);
Q=normc(A);
[x]=omp(S,t,Q);