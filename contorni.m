function OUT = contorni( IMM )
%Evidenzia i contorni dell'immagine
%   Colora i bordi in base all'angolo di inclinazione del bordo secondo uno
%   spazio colore hsv a 256 colori

OUT=zeros(size(IMM));
DX=conv2(conv2(single(IMM),[1 0 -1],'same'),[1; 2; 1],'same');
DY=conv2(conv2(single(IMM),[1 2 1],'same'),[1; 0; -1],'same');
MOD=sqrt(DX.^2+DY.^2);
mmax=sqrt(2*1020^2);
m_norm=uint8(round(254*single(MOD)/mmax)+1);
a=atan2(DY,DX); %angoli
A=uint8(round(1+254*(a+pi)/(2*pi))); %angoli riportati tra 0 e 255
m_binario=m_norm>=30;
tavolozza = [[0 0 0 ]; hsv(255)];
OUT=uint8(m_binario) .*A;
figure;imshow(OUT,tavolozza);
end

