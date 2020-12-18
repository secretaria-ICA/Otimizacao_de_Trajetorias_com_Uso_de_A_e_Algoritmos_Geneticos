
clear all
close all


%pega o mapa do pdf em BW

plat=imread('platMG02m.png');

plat=double(plat);
plat=plat(:,:,3);
sizeplat=size(plat);
MAX_X=sizeplat(1);
MAX_Y=sizeplat(2);

axis([1 MAX_X+1 1 MAX_Y+1])
grid on;
hold on;

for i=1:MAX_X
    for j=1:MAX_Y
        if(plat(i,j) >= 100)
            plat(i,j)=2;
        else
            plat(i,j)=-1;
        end
    end
end

for i=1:MAX_X
    for j=1:MAX_Y
        if(plat(i,j) == -1)
            plot(i+.5,j+.5,'ro');     
        end
    end
end



 
csvwrite('mapMG2.csv',plat) 
