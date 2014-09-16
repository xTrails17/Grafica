function newimg= rotazione(img, an)

anrad= (an/180)*pi;

x= size (img, 1);
y= size (img, 2);

b= round (x*cos(anrad)+ y*sin(anrad));
h= round (x*sin(anrad)+ y*cos(anrad));

for i=1:x
    for j=1:y
        cx(i,j)= round (i*cos(anrad) - j*sin(anrad));
        cy(i,j)= round (i*sin(anrad) + j*cos(anrad));
    end
end
px= min (cx(:));
py= min (cy(:));

for i=1:x
    for j=1:y
        cx= round (i*cos(anrad) - j*sin(anrad));
        cy= round (i*sin(anrad) + j*cos(anrad));
        
        if (px < 0)
            cx= cx + abs (px) + 1;
        end
        if (py < 0)
            cy= cy + abs (py) + 1;
        end
        
        newimg (cx, cy)= img (i, j);
        
    end
end

end