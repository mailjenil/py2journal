b=imread('pout.tif');
t=input('start:');
y=input('end: ');
%q=input('scale: ');

[m n] = size(b);


for a=1:m
    for c=1:n
        e=b(a,c);
        if( (e>=t) && (e<=y))
                
               p(a,c)=150;
                
        else
            p(a,c)=e;
        end
    end
    
end

imshow(b);
figure;
imshow(p);