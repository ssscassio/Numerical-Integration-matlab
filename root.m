addpath('rules');
%f(x) = 0.2 + 25x - 200x^2 + 675x^3 - 900x^4 + 400x^5

%function y=func(x) begin
%    y = 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
%end

func = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

limiteInferior = 0;
limiteSuperior = 0.8;
n = 100000;

valorAbsoluto = 1.64053334;

%limite inferior, limite superior, numero de intervalos se tiver, e a funcao

%Simpson simples
ssimples = simpsonSimples(limiteInferior, limiteSuperior, func);
ssimpleserro = (valorAbsoluto - ssimples)/valorAbsoluto;

%Simpson composto
scomposto = simpsonComposta(limiteInferior, limiteSuperior, n, func);
scompostoerro = (valorAbsoluto - scomposto)/valorAbsoluto;

%Simpson tres oitavos
stres = simpsonTresOitavos(limiteInferior, limiteSuperior, func);
streserro = (valorAbsoluto - stres)/valorAbsoluto;

%trapezoidal simples
tsimples = trapezoidalSimples(limiteInferior, limiteSuperior, func);
tsimpleserro = (valorAbsoluto - tsimples)/valorAbsoluto;

%trapezoidal composto
tcomposto = trapezoidalComposta(limiteInferior, limiteSuperior, n, func);
tcompostoerro = (valorAbsoluto - tcomposto)/valorAbsoluto;


%criacao de tabela
resultado = [ssimples; scomposto; stres; tsimples; tcomposto];
erro = [ssimpleserro; scompostoerro; streserro; tsimpleserro;tcompostoerro];
metodos = {'Simpson Simples'; 'Simpson Composta'; 'Simpson Três Oitavos'; 'Trapezoidal Simples'; 'Trapezoidal Composta'};
T = table(resultado, erro, 'RowNames', metodos)