function trapezoidalSimples(a, b, f) %a e b � o intervalo, f � a fun��o.
    return (b-a)*(f(a)+f(b))/2; %f�rmula trapezoidal.
end