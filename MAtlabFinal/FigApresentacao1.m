clear all
close all


run('abreMapPlat');

sequencia=[16
15
16
15
14
7
8
14
15
9
10
12
11
13
4
3
2
1
2
1
2
1
2
6
5];

sequencia=[1 2 3 4]

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
    
    NTarget=ii;
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


