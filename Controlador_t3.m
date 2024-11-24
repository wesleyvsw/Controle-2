%Controlador
ts = 1;
mp = 0.05;
zeta = -log(mp)/sqrt(pi^2 + (log(mp))^2)
wn = 4/(zeta*ts)
%Definindo zeta e omega n maiores que os encontrados
zeta_novo = 0.7;
wn_novo = 6;
%Descorindo os polos do sistema
raizes = roots([1,2*zeta_novo*wn_novo,wn_novo^2])
%Acho que a minha nova matriz vai mudar de dimensão---> Apagar comentario
%qd descobri
%Calculo de novos polos para encontrar as constantes do sistema
A = 