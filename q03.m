%Quest�o 03
% Um sinal senoidal exponencialmente amortecido � definido por:
% x(t) = 20 sen(2pi * 1000t - pi/3)*e^(-at).
% Em que o parametro exponencial a � variavel; ele assume o seguinte
% conjunto de valores: a = 500, 750, 1000. Usando o MATLAB, investigue o
% efeito de se variar a no sinal x(t) para -2<= t <= 2 milisegundos.
% 
% Fa�a com que plote as 3 figuras em cada ocasi�o e diga o que aconteceu
% para que as figuras sejam diferentes.

% a = 500;
% x1 = inline('20*sin(2*pi*1000*t - pi/3).*exp(-500*t)','t')
% t = (-0.002:0.0001:0.002);
% plot(t,x1(t));
% xlabel('t');
% ylabel('x(t)= 20*sin((2*pi*1000*t) - (pi/3))*exp(-a*t)');

% x2 = inline('20*sin(2*pi*1000*t - pi/3).*exp(-750*t)','t')
% t = (-0.002:0.0001:0.002);
% plot(t,x2(t));
% xlabel('t');
% ylabel('x(t)= 20*sin((2*pi*1000*t) - (pi/3))*exp(-a*t)');
% 
x3 = inline('20*sin(2*pi*1000*t - pi/3).*exp(-1000*t)','t')
t = (-0.002:0.0001:0.002);
plot(t,x3(t));
xlabel('t');
ylabel('x(t)= 20*sin((2*pi*1000*t) - (pi/3))*exp(-a*t)');





