%limite de a à b com n intervalos.
function simpson38C(limInf,limSup,numIntervalo, func)
result = 0;
h=(limSup-limInf)/numIntervalo;                         %tamanho do intevalo
soma1=0;
soma2=0;
xi=a+h;                                %valor inicial para x
 
barra = waitbar(0,'Calculando...');    %declara a barra.
 
    for i=1:numIntervalo-1                        %Soma as parte de acordo com 3/8 de Simpson.
        if rem(i,3)~=0                 % Se o resto da divisão por 3 for diferente de zero
            soma1=soma1+func(xi);
            xi=xi+h;
        else
            soma2=soma2+func(xi);
            xi=xi+h;
        end
        waitbar(i/ (numIntervalo-1));                     % Atualiza a barra de progresso.
    end
    close(barra);                              %Fecha a barra de progresso.
    result=(3/8)*h*(func(limInf)+3*soma1+2*soma2+func(limSup));     % Calcula o valor da Integral.
    return result;
end