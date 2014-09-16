function [newimg,newmap] = myrgb2ind(img,num)
[oldimg,oldmap] = rgb2ind(img,num, 'nodither');
[~,p]  = sort(rgb2gray(reshape(oldmap,num,1,3)));
newmap = oldmap(p,:);
lut(p) = 1:num;
newimg = lut(oldimg+1);
