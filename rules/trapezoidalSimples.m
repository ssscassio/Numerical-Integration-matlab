function trapezoidalSimples(limInf, limSup, f) %a e b é o intervalo, f é a função.
    return (limSup-limInf)*(f(limInf)+f(limSup))/2; %fórmula trapezoidal.
end