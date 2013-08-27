clc;
clear all;
close all;
b=imread('powerlaw.tif');
[m n]=size(b);
b=double(b);
for i=1:m
    for j=1:n
        c(i,j)=1*b(i,j)^(0.5);
    end
end
a=uint8(c);
d=uint8(b);
imshow(d);
figure;
imshow(a);