function [ out ] = convolvi_lookup ( input , kernel_m )
%UNTITLED convolve la matrice input con il kernel kernel_m
% implementare la convoluzione con un kernel quadrato di dimensione
% generica dispari utilizzando una lookup table.
% EDIT 30/10/13 16:35
    [r , c] = size(input);
    [kr,kc]= size(kernel_m);
    br=(kr-1)/2;
    bc=(kc-1)/2;
    out= zeros(r,c);
    lookup=generate_lookup(kernel_m);
    for i=(1+br):r-(br+1)
        for j=(1+bc):c-(bc+1)
            for x=1:kr
                for y=1:kc
                        out(i,j)=out(i,j)-lookup(x,y,1+input(i+x-br,j+y-bc));
                end
            end
        end
    end    
end
 
    function [lookup] = generate_lookup(kernel_m)
        [kr,kc]= size(kernel_m);    
        lookup=zeros(kr,kc,256);
        for x=1:kr
            for y=1:kc
                for i=1:256
                    lookup(x,y,i)=(i-1)*kernel_m(x,y);
                end
            end
        end
    end