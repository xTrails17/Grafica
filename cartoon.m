function [newimg,newmap]=cartoon(img,n)
[tmp,map]=rgb2ind(img,n,'nodither');
lut=zeros(1,n);
lum=0.2989*map(:,1)+0.5870*map(:,2)+0.1140*map(:,3);
[xxx,p]=sort(lum);
newmap=map(p,:);
for i=1:n
    lut(p(i))=i;
end

newimg=lut(tmp+1);