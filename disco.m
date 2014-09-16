function se=disco(r)
for y=-r:r
    for x=-r:r
        if (sqrt(x^2+y^2)<=r)
            se(x+r+1,y+r+1)=1;
        end
    end
end