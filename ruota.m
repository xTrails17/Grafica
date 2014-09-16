function OUT =ruota( IMM, a )
%Ruota un'immagine di a gradi
an= (a/180)*pi; %converte da gradi a radianti
[w , h]=size(IMM); %prende le dimensioni dell'immagine


%calcolo delle cordinate dei vertici per stabilire le dimensioni
%dell'immagine di output
 Ax= round (w*cos(an) - 1*sin(an));
 Ay= round (w*sin(an) + 1*cos(an));
 Bx= round (1*cos(an) - 1*sin(an));
 By= round (1*sin(an) + 1*cos(an));
 Cx= round (1*cos(an) - h*sin(an));
 Cy= round (1*sin(an) + h*cos(an));
 Dx= round (w*cos(an) - h*sin(an));
 Dy= round (w*sin(an) + h*cos(an));
 minX=min([Ax,Bx,Cx,Dx]);
 maxX=max([Ax,Bx,Cx,Dx]);
 minY=min([Ay,By,Cy,Dy]);
 maxY=max([Ay,By,Cy,Dy]);
 
 if(minX<0)
     W=maxX+abs(minX)+1;
 else W=maxX;
 end
 if(minY<0)
     H=maxY+abs(minY)+1;
 else H=maxY;
 end

 %altro metodo per calcolarmi le dimensioni, ma non va bene per angoli
 %negativi
%W=round(abs(w*cos(an)+abs(h*sin(an)))); 
%H=round(abs(w*sin(an)+abs(h*cos(an))));

OUT=zeros(W,H);

offx=round(W/2)-round((W-w)/2);
offy=round(H/2)-round((H-h)/2);

for i=1:W
    for j=1:H
        X=i-round(W/2);
        Y=j-round(H/2);
        x= X*cos(-an) - Y*sin(-an)+offx;
        y= X*sin(-an) + Y*cos(-an)+offy;
        x1=ceil(x)-x;
        x2=1-x1;
        y1=ceil(y)-y;
        y2=1-y1;
        A1=x1*y1;
        A2=x1*y2;
        A3=x2*y1;
        A4=x2*y2;
        if(x>=1 && x<=w && y>=1 && y<=h)
        g=round(A1*IMM(floor(x),floor(y))+A2*IMM(floor(x),ceil(y))+A3*IMM(ceil(x),floor(y))+A4*IMM(ceil(x),ceil(y)));
            OUT(i,j)=g;     
        end
    end
   
end
