%Fórmula de Newton-Cotes fechado - Regra Trapezoidal Simples 
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % n: numero de sub-intervalos
    % func: função para calcular a integral
function limite = trapezoidalComposta( limInf , limSup, n, func)

    % height: tamanho do sub-intervalo    
    height = (limSup - limInf)/n;

    % xi: Valor do intervalo Superior do sub-intervalo
    xi = limInf+h;

    soma = 0;

    for i=1:n-1
        soma = soma+f(xi);
        xi=xi+h; 
    end
    
    limite = h*((func(limInf)+func(limSup))/2+soma);
