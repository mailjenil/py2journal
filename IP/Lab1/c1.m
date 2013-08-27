clc;
clear all;
close all;
p=imread('cameraman.tif');
[m n]=size(p);
p=double(p);

for i=1:2:m
   
    for j=1:2:n
       q=p(i,j);
       if((q>=0) && (q<=15))
           f(i,j)=15;
       elseif((q>15) && (q<=30))
           f(i,j)=30;
            elseif((q>30) && (q<=45))
           f(i,j)=45;
            elseif((q>45) && (q<=60))
           f(i,j)=60;
            elseif((q>60) && (q<=75))
           f(i,j)=75;
            elseif((q>75) && (q<=90))
           f(i,j)=90;
           elseif((q>90) && (q<=105))
           f(i,j)=105;
            elseif((q>105) && (q<=120))
           f(i,j)=120;
           elseif((q>120) && (q<=135))
           f(i,j)=135;
            elseif((q>135) && (q<=150))
           f(i,j)=150;
           elseif((q>150) && (q<=165))
           f(i,j)=165;
            elseif((q>165) && (q<=180))
           f(i,j)=180;
           elseif((q>180) && (q<=195))
           f(i,j)=195;
            elseif((q>195) && (q<=210))
           f(i,j)=210;
           elseif((q>210) && (q<=225))
           f(i,j)=225;
            elseif((q>225) && (q<=240))
           f(i,j)=240;
       else
           f(i,j)=255;
       end
    end
end
p=uint8(p);
imshow(p);
figure;
imhist(p);
figure;

f=uint8(f);
imshow(f);
figure;
imhist(f);
