clc;
clear all;
close all;
p=imread('cameraman.tif');
[m n]=size(p);
u=1;

for i=1:2:m
    v=1;
    for j=1:2:n
       f(u,v)=p(i,j);
       v=v+1;
    end
     u=u+1;
end
imshow(p);
figure;
imshow(f);
