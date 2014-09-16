function img2=filtro(img,n)
[h,w]=size(img);
ker=zeros(n)+1/(n*n);
k=size(ker);
v=zeros(256,n);
for j=1:k
    for i=1:256
        v(i,j)=i*ker(j);
    end
end
