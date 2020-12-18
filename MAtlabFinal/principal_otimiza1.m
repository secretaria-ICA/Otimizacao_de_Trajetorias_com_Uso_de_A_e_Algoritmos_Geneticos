
% trechocusto(3,1:2)
% trechocusto(4,1)==2&&trechocusto(4,2)==3

clear all
close all

pontos=csvread('checkPoints.csv');
npontos=size(pontos);
npontos=npontos(1);
combs = nchoosek(1:npontos,2);
ncombs =size(combs);
ncombs=ncombs(1);

custos=csvread('custos.csv');
trechocusto=[combs custos']
trechocustosize=size(trechocusto);
trechocustosize=trechocustosize(1);

% ###################################




% ###################################

% sequencia=[2 3 1 4];
% sequencia=[3 1 4 2]
sequencia=[4 1 4 2]  %apagar

custocalc=0;

for sii=1:npontos-1
    pt1=sequencia(sii);
    pt2=sequencia(sii+1);
    
    if pt1>pt2
        pt11=pt2;
        pt22=pt1;
    else
        pt11=pt1;
        pt22=pt2;
    end
    
    for itrc=1:trechocustosize
%         itrc
        if trechocusto(itrc,1)==pt11&&trechocusto(itrc,2)==pt22
%             trechocusto(itrc,3)
            custocalc=custocalc+trechocusto(itrc,3);
        end
    end
end

custocalc
