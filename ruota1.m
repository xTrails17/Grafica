function newimg=ruota1(img,a)
[x,y]=size(img);
anrad=(a/180)*pi;
ax= round (1*cos(-anrad)- 1*sin(-anrad));
bx= round (1*cos(-anrad)- y*sin(-anrad));
cx= round (x*cos(-anrad)- 1*sin(-anrad));
dx= round (x*cos(-anrad)- y*sin(-anrad));
mx=min([ax bx cx dx]);
Mx=max([ax bx cx dx]);

W=abs(Mx-mx);

ay= round (1*sin(-anrad)+ 1*cos(-anrad));
by= round (1*sin(-anrad)+ y*cos(-anrad));
cy= round (x*sin(-anrad)+ 1*cos(-anrad));
dy= round (x*sin(-anrad)+ y*cos(-anrad));
my=min([ay by cy dy]);
My=max([ay by cy dy]);

H=abs(My-my);

newimg=zeros(W,H);

offx=round(W/2)-round((W-x)/2);
offy=round(H/2)-round((H-y)/2);
for i=1:W
    for j=1:H
        X=i-round(W/2);
        Y=j-round(H/2);
        cx= round (X*cos(-anrad) - Y*sin(-anrad)+offx);
        cy= round (X*sin(-anrad) + Y*cos(-anrad)+offy);
        if(cx>=1 && cx<=x && cy>=1 && cy<=y)
            newimg (i,j)= img (cx, cy);
            
        end
    end
end

