function trapezoidalSimples(limInf, limSup, f) %limInf e limSup � o intervalo, f � a fun��o.
    return (limSup-limInf)*(f(limInf)+f(limSup))/2; %f�rmula trapezoidal.
end