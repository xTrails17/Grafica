function imgmed=filtromediano(img1)
[h,w]=size(img1);
imgmed=(img1);
for i=2:h-1
    for j=2:w-1
        k=[img1(i-1,j-1) img1(i-1,j) img1(i-1,j+1) img1(i,j-1) img1(i,j) img1(i,j+1) img1(i+1,j-1) img1(i+1,j) img1(i+1,j+1)];
        k=sort(k);
        len=length(k);
        imgmed(i,j)=k(floor(len/2));
    end
end