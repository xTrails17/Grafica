function dit = prova1(img)
[h, w] = size(img);
dit = zeros(h, w);
for j = 1:h
    for i = 1:w
        if img(j,i)>=127
            dit(j,i)=255;
        end;
        err = img(j,i) - dit(j,i);
        if i<w
            img(j,i+1) = img(j,i+1) + 7/16 *err;
        end;
        if j<h && i>1
            img(j+1,i-1) = img(j+1,i-1) + 3/16 *err;
            img(j+1,i) = img(j+1,i) + 5/16 *err;
        end;
        if i<w && j<h
            img(j+1,i+1) = img(j+1,i+1) + 1/16 *err;
        end;
    end;
end;