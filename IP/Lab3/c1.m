b=imread('pout.tif');
[m n]=size(b);
for i=1:m
    for j=1:n
        a(i,j)=255-b(i,j);
    end
end
imshow(b);
figure;
imshow(a);
