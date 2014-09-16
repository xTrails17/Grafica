function OUT=ridimensionamento(img,k)
[h,w]=size(img);
W=w*k;
H=h*k;
OUT=zeros(W,H);
for i=1:W
    for j=1:H
        OUT(i,j)=img(round(i/k),round(j/k));
    end
end

        

