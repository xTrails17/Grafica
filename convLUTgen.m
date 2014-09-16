function OUT = convLUTgen( IMM,k )
%Utilizza le LUT per la convoluzione
[dimx,dimy]=size(IMM); %PRENDE LE DIMENSIONI DELL'IMMAGINE
IMM2=IMM+1; %aumenta di 1 tutti i livelli di grigio di IMM(per eliminare i valori a 0)
[kr, kc]=size(k); %prende le dimensioni del kernel
OUT=zeros(dimx,dimy); %alloca l'immagine TMP

br=round(kr/2);
bc=round(kc/2);

for i=1:kr    %assegna i valori alle lut
    for j=1:kc
        lutatt=k(i,j)*[0:255]; %lut attuale(indica quale lut usare)
        OUT(br:end-br+1,bc:end-bc+1)= OUT(br:end-br+1,bc:end-bc+1) +lutatt(IMM2(kr-i+1:end-i+1,kc-j+1:end-j+1));  %somma tutte le immagini intermedie
    end
end