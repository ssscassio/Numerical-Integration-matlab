%Fórmula de Newton-Cotes fechado - Regra Trapezoidal Simples
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % func: função para calcular a integral
function limite = trapezoidalSimples(limInf, limSup, func)
    % n: numero de sub-intervalos
    n = 1;

    % height: tamanho do sub-intervalo    
    height = (limSup - limInf)/n;

    limite = height*(func(limInf)+func(limSup))/2;