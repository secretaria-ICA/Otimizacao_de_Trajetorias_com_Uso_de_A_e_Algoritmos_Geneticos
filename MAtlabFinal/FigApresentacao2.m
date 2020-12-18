clear all
close all


run('abreMapPlat');


sequencia=[21, 20, 5, 4, 2, 1, 0, 3, 7, 9, 8, 6, 12, 10, 23, 19, 18, 17, 16, 15, 13, 11, 14, 22];

sequencia=sequencia+1
sequencia=sequencia'

%sequencia=sequencia'



pontoslidos=csvread('checkPoints.csv');
npontoslidos=size(pontoslidos);
npontoslidos=npontoslidos(1);

nsequencia=size(sequencia);
nsequencia=nsequencia(1);

pontos=[];

for iai=1:nsequencia
    pontos(iai,:)=pontoslidos(sequencia(iai),:,:);
end


    
    
    
    
npontos=size(pontos);
npontos=npontos(1);
% combs = nchoosek(1:npontos,2)
% ncombs =size(combs);
% ncombs=ncombs(1);

custos=[];

NTarget=0;

for ii=1:npontos-1
    ptsaida=pontos(ii,1);
    pttarget=pontos(ii,2);
    
    NTarget=sequencia(ii+1);%NTarget=ii;
    NTarget=int2str(NTarget);
    
    %Vehicle initial position
    inicio_x=pontos(ii,1);
    inicio_y=pontos(ii,2);

    %target
    target_x=pontos(ii+1,1);
    target_y=pontos(ii+1,2);
%     run('usaListadePontos_2');
    run('usaListadePontos_2FastFIG');
    custos(ii)=path_cost;
end

NTarget=sequencia(1);%NTarget=ii;
NTarget=int2str(NTarget);
xval=pontos(1,1);
yval=pontos(1,2);
text(xval+1,yval+.5,NTarget,'Fontsize',20);



