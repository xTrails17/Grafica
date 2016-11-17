function dit = prova2(img)
[h, w] = size(img);
dit = zeros(h, w);
for j = 1:h
    for i = 1:w
        if img(j,i)>=127
            dit(j,i)=255;
        end;
        err = img(j,i) - dit(j,i);
        if i<w
            img(j,i+1) = img(j,i+1) + 3/8 *err;
        end;
        if j<h && i>1
            img(j+1,i-1) = img(j+1,i-1) + 1/8 *err;
            img(j+1,i) = img(j+1,i) + 3/8 *err;
        end;
        if i<w && j<h
            img(j+1,i+1) = img(j+1,i+1) + 1/8 *err;
        end;
    end;
end;