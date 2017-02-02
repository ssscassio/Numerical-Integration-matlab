function trapezoidalComposta (limInf, limSup, n, f) %limInf e limSup são os limites com n intervalos
    h=(limSup - limInf)/n; %altura do trapezio
    xi=limInf+h; %valor do x inicial
    soma = 0;

    for i=1:n-1
        soma = soma+f(xi); %soma as partes intermediárias
        xi=xi+h;       %atualiza o valor de x 
    end
    
    return (h/2)*(f(limInf)+f(limSup))+h*soma; %formula trapezoidal composta
end
