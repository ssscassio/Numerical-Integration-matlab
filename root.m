addpath('rules');
%f(x) = 0.2 + 25x - 200x^2 + 675x^3 - 900x^4 + 400x^5

%function y=func(x) begin
%    y = 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
%end
limiteInferior = 0;
limiteSuperior = 0.8;

func = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;
funcneg = @(x) -0.2 - 25*x + 200*x.^2 - 675*x.^3 + 900*x.^4 - 400*x.^5;

func1 = @(x)25 - 400*x + 2025*x.^2 - 3600*x.^3 + 2000*x.^4;

func2 = @(x)-400 + 4050*x - 18000*x.^2 + 8000*x.^3;

func3 = @(x) 4050 - 36000*x + 24000*x.^2;

func4 = @(x) -36000 + 48000*x;

max = fminbnd(funcneg, limiteInferior, limiteSuperior);


n = 100;

valorAbsoluto = 1.64053334;

%limite inferior, limite superior, numero de intervalos se tiver, e a funcao

%Simpson simples
ssimples = simpsonSimples(limiteInferior, limiteSuperior, func, max, func4);
ssimpleserro = (valorAbsoluto - ssimples)/valorAbsoluto;

%Simpson composto
scomposto = simpsonComposta(limiteInferior, limiteSuperior, n, func, max, func4);
scompostoerro = (valorAbsoluto - scomposto)/valorAbsoluto;

%Simpson tres oitavos
stres = simpsonTresOitavos(limiteInferior, limiteSuperior, func, max, func4);
streserro = (valorAbsoluto - stres)/valorAbsoluto;


%trapezoidal simples
tsimples = trapezoidalSimples(limiteInferior, limiteSuperior, func, max, func2);
tsimpleserro = (valorAbsoluto - tsimples)/valorAbsoluto;

%trapezoidal composto
tcomposto = trapezoidalComposta(limiteInferior, limiteSuperior, n, func, max, func2);
tcompostoerro = (valorAbsoluto - tcomposto)/valorAbsoluto;

%criacao de tabela
resultado = [ssimples; scomposto; stres; tsimples; tcomposto];
erro = [ssimpleserro; scompostoerro; streserro; tsimpleserro;tcompostoerro];
metodos = {'Simpson Simples'; 'Simpson Composta'; 'Simpson Tr�s Oitavos'; 'Trapezoidal Simples'; 'Trapezoidal Composta'};
T = table(resultado, erro, 'RowNames', metodos)