%neste arquivo vc escolhe todos os pontos para serem simulados


MAX_VAL=10;
%This array stores the coordinates of the map and the 
%Objects in each coordinate
MAP=2*(ones(MAX_X,MAX_Y));

% Obtain Obstacle, Target and Robot Position
% Initialize the MAP with input values
% Obstacle=-1,Target = 0,Robot=1,Space=2
j=0;
x_val = 1;
y_val = 1;
axis([1 MAX_X+1 1 MAX_Y+1])
grid on;
hold on;
n=0;%Number of Obstacles


% inserindo mapa salvo
MAP=csvread('mapMG2.csv');

for i=1:MAX_X
    for j=1:MAX_Y
        if(MAP(i,j) == -1)
            plot(i+.5,j+.5,'ro');     
        end
    end
end
% inserindo mapa salvo


pause(1);
h=msgbox('Select check points using the Left Mouse button,to select the last obstacle use the Right button');
  xlabel('Select check points using the Left Mouse button,to select the last obstacle use the Right button','Color','blue');
uiwait(h,10);
if ishandle(h) == 1
    delete(h);
end

but=1;
chkptsX=[];
chkptsY=[];
iii=1;
while but == 1
    [xval,yval,but] = ginput(1);
    xval=floor(xval);
    yval=floor(yval);
%     MAP(xval,yval)=-1;%Put on the closed list as well
    plot(xval+.5,yval+.5,'bo');
    chptsX(iii)=xval;
    chptsY(iii)=yval;
    iii=iii+1;
 end%End of While loop
 
 chpts=[chptsX',chptsY'];
 csvwrite('checkPoints.csv',chpts)
 