%Cria��o de fun��o de transferencia e descri��o de estados no sistema
%Equipe: Igor Rodrigues e Bruna Valentim.



%I)Descri��o das matrizes A, B, C, D:

A = [-1/(15*10^-3),-5/(15*10^-3); (5/15),(-50/15)]
B = [1/15*10^-3; 10/15]
C = [-1/15 -5/15]
D = 1/15

% % II)desenhando o grafico degrau
step(A,B,C,D,1);
grid
title('Resposta ao degrau unit�rio!');
xlabel('x(t)');
ylabel('y(t)');
% 
% 
% % III)Desenhando o gr�fico rampa.
% [num, den] = ss2tf(A,B,C,D)
% t = 0:0.1:5;
% y = step(num,den,t);
% plot(t,y);
% grid
% title('Resposta a rampa!');
% xlabel('t');
% ylabel('y(t)');
% 
% 
% % IV)Desenhando o impulse
% impulse(A,B,C,D);
% grid
% title('Resposta ao impulso!');
% xlabel('x(t)');
% ylabel('y(t)');








