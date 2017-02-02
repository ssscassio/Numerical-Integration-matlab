function trapezoidalSimples(limInf, limSup, f) %a e b � o intervalo, f � a fun��o.
    return (limSup-limInf)*(f(limInf)+f(limSup))/2; %f�rmula trapezoidal.
end