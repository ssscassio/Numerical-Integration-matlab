function trapezoidalSimples(limInf, limSup, f) %limInf e limSup é o intervalo, f é a função.
    return (limSup-limInf)*(f(limInf)+f(limSup))/2; %fórmula trapezoidal.
end