clear all
close all


run('abreMapPlat');


pontos=csvread('checkPoints.csv');
npontos=size(pontos);
npontos=npontos(1);
combs = nchoosek(1:npontos,2)
ncombs =size(combs);
ncombs=ncombs(1);

custos=[];

for ii=1:ncombs
    ptsaida=combs(ii,1);
    pttarget=combs(ii,2);
    
    %Vehicle initial position
    inicio_x=pontos(ptsaida,1);
    inicio_y=pontos(ptsaida,2);

    %target
    target_x=pontos(pttarget,1);
    target_y=pontos(pttarget,2);
%     run('usaListadePontos_2');
    run('usaListadePontos_2Fast');
    custos(ii)=path_cost;
end


csvwrite('custos.csv',custos)
