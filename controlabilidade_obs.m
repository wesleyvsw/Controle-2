%Definindo os dados do Sistema
A =[[0 1 0];[981.0001 0 -2.80143];[0 0 -100]]
b = [0;0;100]
c = [1 0 0]


%Verificando a controlabilidade
% Número de estados (ordem do sistema)
n = size(A, 1);

% Construindo a matriz de controlabilidade
mat_controlabilidade = b;
for i = 1:n-1
    mat_controlabilidade = [mat_controlabilidade A^i * b];
end

% Verificando o posto da matriz de controlabilidade
mat_controlabilidade
posto_controlabilidade = rank(mat_controlabilidade)

% Verificando se o sistema é controlável
if posto_controlabilidade == n
    disp('O sistema é controlável');
else
    disp('O sistema não é controlável');
end

%%%%Observabilidade

% Construindo a matriz de observabilidade
obs = c;
for i = 1:n-1
    obs = [obs; c * A^i];
end

% Verificando o posto da matriz de observabilidade
obs
rank_obs = rank(obs)

% Verificando se o sistema é observável
if rank_obs == n
    disp('O sistema é observável');
else
    disp('O sistema não é observável');
end
