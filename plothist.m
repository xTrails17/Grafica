function h=plothist(img)
% esempio: plothist(img);
h=imhist(uint8(img),256)';
m=101-ceil(100*double(h)/double(max(h(:))));
c=101-ceil(100*cumsum(h)/prod(size(img)));
hplot=uint8(zeros(120,256,3)+255);
for i=1:256
hplot(m(i):100,i,:)=0;
if c(i)<101
hplot(c(i),i,:)=[255,0,0];
end;
hplot(102:120,i,:)=i-1;
end;
figure; imshow(hplot);