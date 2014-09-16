function out=mymedian(img,n)
b=floor(n/2);
[h,w]=size(img);
out=img;
tmp=b*n+b-1;
for j=b+1:h-b
    for i=b+1:w-b
        intorno=img(j-b:j+b,i-b:i+b);
        intorno=sort(intorno(:));
        out(j,i)=intorno(tmp);
    end
end
        