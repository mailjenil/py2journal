clc;
clear all;
close all;
b=imread('logtm.tif');
[m n]=size(b);
b=double(b);
for i=1:m
    for j=1:n
        c(i,j)=10*log(1+b(i,j));
    end
end
a=uint8(c);
imshow(b);
figure;
imshow(a);