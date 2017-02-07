%Fórmula de Newton-Cotes fechado - Regra de Simpson Simples 1/3
    % limInf: intervalo Inferior da integração
    % limSup: intervalo Superior da integração
    % func: função para calcular a integral
function integral = simpsomSimples(limInf,limSup,func)

    % height: tamanho do sub-intervalo
    height=(limSup-limInf)/2;

    integral=(height/3)*(func(limInf)+4*func(limInf+height)+func(limSup));