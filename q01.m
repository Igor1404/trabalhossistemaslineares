%Universidade Federal do Cear�
%Equipe: Igor Rodrigues Cardoso e Bruna Valentim
%Professor: Vandilberto
%Disciplina: Sistemas Lineares

%Quest�o 01: Plotagem das seguintes fun��es

% %Seguinte nessa  quest�o ser� plotada os degraus e suas opera��es
% Quando � representado por t=>0, significa um degrau unitario.
% Tenta Organizar e mostrar cada etapa de cada quest�o.
% Ex: Mostre a figura do t>=0, depois voc� acrescenta o t<2.
% E tenta organizar cada figura..

% A)(t>=0)&(t<2)
% xa = inline('((t>=0)&(t<2))','t');
% t = (-10:0.01:10);
% plot(t,xa(t));
% xlabel('t');
% ylabel('x(t) = u(t)-u(t-2)');
% axis([-4 4 -3 3]);

%B)(t>-1)-2*(t>=0)+(t>1)
% xb = inline('(t>-1)-2*(t>=0)+(t>1)','t');
% t = (-10:0.01:10);
% plot(t,xb(t));
% xlabel('t');
% ylabel('x(t) = u(t-1)');
% axis([-4 4 -5 5]);

%C)-(t>=-3)+2*(t>=-1)-2*(t>=1)+(t>=3)
xc = inline('-(t>=-3)+2*(t>=-1)-2*(t>=1)+(t>=3)','t');
t = (-5:0.01:5);
plot(t,xc(t));
xlabel('t');
ylabel('x(t) = u(t-1)');
axis([-4 4 -5 5]);
