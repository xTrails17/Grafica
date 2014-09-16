function derivata=dx(img)
derivata=zeros(size(img));
derivata(1:end-1,:)=img(1:end-1,:)-img(2:end,:);  
        