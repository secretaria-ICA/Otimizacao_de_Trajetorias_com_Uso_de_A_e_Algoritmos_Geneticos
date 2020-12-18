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

matrizcustos=[];

for sii=1:npontos
    
    for siii=1:npontos
        
        if sii>siii
            il=siii;
            ic=sii;
        else
            il=sii;
            ic=siii;
        end
       
        
        for itrc=1:trechocustosize
            if trechocusto(itrc,1)==il&&trechocusto(itrc,2)==ic
                matrizcustos(sii,siii)=trechocusto(itrc,3);
            end
        end
       
    end
    
end

matrizcustos

csvwrite('matrizcustos.csv',matrizcustos)
