% UTILIZAÇÃOS DOS PARAMETROS OBTIDOS ANTERIORMENTE PARA SIMULAR OS GRAFICOS
% DA AMPLITUDE, DESLOCAMENTO ANGULAR E O TORQUE ATRAVÉS DO TEMPO

% ========================================
%DECLARAÇÃO DAS VARIÁVEIS
clc
clear all

syms t;

S= (1757*sin(pi.*t))/100;
S1 = diff(S);
S2 = diff(S1);

S1
S2

l = 0.83;%COMPRIMENTO
m = 3.72;%MASSA
g = 9.8;%ACEL. DA GRAVIDADE
J = 0.3392;%INERCIA
D = 0.003;%VISCOSIDADE
f = 0:0.01:12;%TEMPO DECORRIDO
A = (f/180)*(pi);%ANGULO EM RADIANO
amplitude = (sin(A))*(l);%AMPLITUDE AO DECORRER DO AUMENTO DO ANGULO
AP = amplitude.*(sin(pi*f));%AMPLITUDE AO DECORRER DO TEMPO
THETA = asind(AP./l);%DESLOCAMENTO ANGULAR THETA

for k = 1:100*length(THETA)
    SS1(k) = subs(S1,f,k);
    SS2(k) = subs(S2,f,k);
end

 P = (((m.*g).*l.*0.5.*f));


TORQUE = SS1 + SS2 + P;



%===============================================
%PLOTAGEM DOS GRÁFICOS


%DESLOCAMENTO ANGULAR VS TEMPO
figure(1); 
plot(f,THETA,'black')                       
grid on;
hold on;
title('DESLOCAMENTO ANGULAR VS TEMPO');
xlabel('Tempo');
ylabel('Deslocamento Angular');


%AMPLITUDE VS TEMPO
figure(2);
plot(f,AP,'blue')                 %--   plota o Amplitude
grid on;
hold on; 
title('AMPLITUDE VS TEMPO');
xlabel('tempo');
ylabel('Amplitude');


%TORQUE VS TEMPO
figure(3);
plot(f,TORQUE,'red')                %--   plota o Torque
grid on;  
title('TORQUE VS TEMPO')
xlabel('tempo');
ylabel('Torque');







