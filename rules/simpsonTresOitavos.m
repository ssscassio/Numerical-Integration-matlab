function simpson38C(limInf,limSup,numIntervalo, func)
result = 0;
h=(limSup-limInf)/numIntervalo;
soma1=0;
soma2=0;
xi=a+h;                                
 
barra = waitbar(0,'Calculando...');    
 
    for i=1:numIntervalo-1             
        if rem(i,3)~=0                 
            soma1=soma1+func(xi);
            xi=xi+h;
        else
            soma2=soma2+func(xi);
            xi=xi+h;
        end
        waitbar(i/ (numIntervalo-1));  
    end
    close(barra);
    result=(3/8)*h*(func(limInf)+3*soma1+2*soma2+func(limSup));
    return result;
end