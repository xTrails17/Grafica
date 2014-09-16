function OUT=ridimensionamento2(img,k)
[h,w]=size(img);
W=round(w*k);
H=round(h*k);
OUT=zeros(W,H);
for i=2:W-1
    for j=2:H-1
        x=i/k;
        y=j/k;
        x1=ceil(x)-x;
        x2=1-x1;
        y1=ceil(y)-y;
        y2=1-y1;
        A1=x1*y1;
        A2=x1*y2;
        A3=x2*y1;
        A4=x2*y2;
        OUT(i,j)=round(A1*img(floor(x),floor(y))+A2*img(floor(x),ceil(y))+...
                 A3*img(ceil(x),floor(y))+A4*img(ceil(x),ceil(y))); 
    end
end

        

