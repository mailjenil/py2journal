b=imread('pout.tif');

[m,n] = size(b)
p=zeros(1,256);
%z=zeros(1,256);
for i=1:256
 %   z(i)=i;
for a=1:m
    for c=1:n
        if(b(a,c)==(i-1))
                
               p(i)=p(i)+1;
                
        end
    end
    
end
end
stem(p);