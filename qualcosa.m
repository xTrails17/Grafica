function tmp=qualcosa(img,k)
img2=img+1;
k1=k(1)*[0:255];
k2=k(2)*[0:255];
k3=k(3)*[0:255];
k4=k(4)*[0:255];
k5=k(5)*[0:255];
k6=k(6)*[0:255];
k7=k(7)*[0:255];
k8=k(8)*[0:255];
k9=k(9)*[0:255];

tmp=k5(img2(2:end-1,2:end-1))+...
    k2(img2(2:end-1,3:end))+...
    k8(img2(2:end-1,1:end-2))+...
    k6(img2(1:end-2,2:end-1))+...
    k9(img2(1:end-2,1:end-2))+...
    k3(img2(1:end-2,3:end))+...
    k4(img2(3:end,2:end-1))+...
    k7(img2(3:end,1:end-2))+...
    k1(img2(3:end,3:end));

    
    
    