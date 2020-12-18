# TrabalhoFinal
Otimização de trajetórias com uso de A* e Algoritmos Genéticos

# Título do Trabalho

#### Aluno: Maurício Galassi (https://github.com/MauricioGalassi/TrabalhoFinal)
#### Orientadora: Ana Carolina Alves Abreu (https://github.com/link_do_github) 


---

Trabalho apresentado ao curso [BI MASTER](https://ica.puc-rio.ai/bi-master) como pré-requisito para conclusão de curso e obtenção de crédito na disciplina "Projetos de Sistemas Inteligentes de Apoio à Decisão".




---

### Resumo


Este conjunto de arquivos possibilita a extração de um grid map de uma imagem (pode haver necessidade de ajustes manuais e filtros adicionais dependendo do caso). Nesse mapa podem ser escolhidos, com o mouse, pontos de interesse a serem percorridos. As distâncias entre todas as combinações de pontos são calculadas através do algoritmo A*.
As etapas acima citadas são realizadas com uso de Matlab.

Uma implementação em Python da biblioteca DEAP recebe uma tabela em csv produzida com o Matlab e calcula usando algoritmos genéticos a sequência de visitas com menor custo.

Ajustes na ordem preferencial de visitas e inclusão de sequências obrigatórias podem ser feitas através da ativação de restrições no arquivo Python.

1.	Instruções para uso dos scripts de Matlab:
a.	Sequência de arquivos que devem ser rodados
i.	principal_escolhaPontos.m
ii.	principalCalcCustos.m
iii.	criaMatrizPexcel1.m

Script: principal_escolhaPontos.m: cria o mapa a partir da imagem contida no arquivo platMG02m.png na mesma pasta e salva em mapMG2.csv. Solicita que o usuário escolha os pontos com o mouse na figura do Matlab e salva esses pontos em checkPoints.csv.

principalCalcCustos.m: tem como entradas mapMG2.csv e checkPoints.csv e calcula os custos entre todas as combinações de pontos de interesse e salva em custos.csv. 
criaMatrizPexcel1.m: tem como entrada custos.csv e gera a matriz de custos para o Excel salva em matrizcustos.csv 

otimTrajMG_Final.ipynb: implementado em Python e recebe uma tabela em csv produzida com o Matlab e calcula usando algoritmos genéticos a sequência de visitas com menor custo. Tem como entrada o arquivo gerado por criaMatrizPexcel1.m. ATENÇÃO: devem ser modificadas as 2 linhas com o caminho onde está o arquivo csv com a tabela de custos.

testeComparativoComSoluçãoEmPython.xlsx: este arquivo pode ser usado para avaliar o desempenho obtido com a implementação em Python com um recurso similar disponível no Microsoft Excel.

FigApresentacao2.m: pode ser usado para criar uma figura com o desenho da melhor trajetória. Copiar a saída do Excel ou Python dentro do arquivo e executar no Matlab. ATENÇÃO com a diferença de indexação nos diferentes ambientes de simulação, isto é, começar em 1 ou zero.





---

Matrícula: 192.190.062.

Pontifícia Universidade Católica do Rio de Janeiro

Curso de Pós Graduação *Business Intelligence Master*
