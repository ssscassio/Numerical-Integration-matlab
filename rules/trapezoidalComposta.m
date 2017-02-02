%Fórmula de Newton-Cotes fechado - Regra Trapezoidal Composta
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % numIntervalo: numero de sub-intervalos
    % func: função para calcular a integral
function integral = trapezoidalComposta( limInf , limSup, numIntervalo, func)

    % height: tamanho do sub-intervalo    
    height = (limSup - limInf)/n;

    % xi: Valor do intervalo Superior do sub-intervalo
    xi = limInf+h;

    soma = 0;

    for i=1:numIntervalo-1
        soma = soma+f(xi);
        xi=xi+h; 
    end
    
    integral = h*((func(limInf)+func(limSup))/2+soma);
