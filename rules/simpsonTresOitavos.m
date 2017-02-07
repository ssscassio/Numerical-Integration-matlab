%Fórmula de Newton-Cotes fechado - Regra de Simpson 3/8
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % func: função para calcular a integral
function integral = simpsonTresoitavos (limInf, limSup, func)

    % height: tamanho do sub-intervalo
    height=(limSup-limInf)/3;

    %Fórmula para Simpson 3/8 Simples.
    integral=(3*height/8)*(func(limInf)+3*func(limInf+height)+3*func(limSup-height)+func(limSup));