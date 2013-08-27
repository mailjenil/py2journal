clc;
clear all;
close all;
b=imread('contraststretch.tif');
[m n]=size(b);
r1=input('enter r1: ');
r2=input('enter r2: ');
s1=input('enter s1: ');
s2=input('enter s2: ');
for i=1:m
    for j=1:n
         if((b(i,j)<r1))
        c(i,j)=s1/r1*(b(i,j));
        
         elseif((b(i,j)>=r1) && (b(i,j)<=r2))
        c(i,j)=((s2-s1)/(r2-r1)*(b(i,j)-r1))+s1;
        else
          c(i,j)=((s2-255)/(r2-255)*(b(i,j)-255))+255;   
        end
    end
end
imshow(b);
figure;
imshow(c);