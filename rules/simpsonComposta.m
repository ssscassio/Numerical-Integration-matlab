%Fórmula de Newton-Cotes fechado - Regra de Simpson Composta 1/3
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % numIntervalo: numero de sub-intervalos
    % func: função para calcular a integral
function [limite, erroEstimado] = simpsonComposta( limInf, limSup , numIntervalo , func )

    % height: tamanho do sub-intervalo
    height=(limSup-limInf)/numIntervalo;
    
    soma1=0;
    soma2=0;
    h = (limSup-limInf)/numIntervalo;
    % xi: Valor do intervalo Superior do sub-intervalo
    xi=limInf+height; 
    
    for i=1:numIntervalo-1
        if rem(i,2)~=0 % Caso impar
            soma1=soma1+func(xi);
            xi=xi+h;
        else % Caso par
            soma2=soma2+func(xi);
            xi=xi+h;
        end
    end

    limite=(h/3)*(func(limInf)+4*soma1+2*soma2+func(limSup));