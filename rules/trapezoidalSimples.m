%Fórmula de Newton-Cotes fechado - Regra Trapezoidal Simples
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % func: função para calcular a integral
function integral = trapezoidalSimples(limInf, limSup, func)
    % numIntervalo: numero de sub-intervalos
    numIntervalo = 1;

    % height: tamanho do sub-intervalo    
    height = (limSup - limInf)/numIntervalo;

    integral = height*(func(limInf)+func(limSup))/2;