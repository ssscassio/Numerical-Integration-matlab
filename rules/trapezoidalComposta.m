%Fórmula de Newton-Cotes fechado - Regra Trapezoidal Composta
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % numIntervalo: numero de sub-intervalos
    % func: função para calcular a integral
function integral = trapezoidalComposta( limInf , limSup, numIntervalo, func, max, func2)

    % height: tamanho do sub-intervalo    
    height = (limSup - limInf)/numIntervalo;

    % xi: Valor do intervalo Superior do sub-intervalo
    xi = limInf+height;

    soma = 0;

    for i=1:numIntervalo-1
        soma = soma+func(xi);
        xi=xi+height; 
    end
    
    integral = height*((func(limInf)+func(limSup))/2+soma);

    erroEstimado = -numIntervalo*height.^2/12*func2(max);
    
    fprintf('\nErro estimado para trapezoidal Composta: %d\n', erroEstimado);
    