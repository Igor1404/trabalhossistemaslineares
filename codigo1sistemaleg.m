%------------------------------gráficos de amplitude, angulo de forma
%senoidal do movimento de uma perna humana---------------------%

%DECLARAÇÃO DE VARIÁVEIS
l=0.83;%COMPRIMENTO
A=(pi/15); %ANGULO MÁXIMO EM RADIANO
amplitude=(sin(A))/(l);%AMPLITUDE
T=(0:0.1:10);%PERIODO DE TEMPO
AMP = amplitude*(sin(pi*T));%AMPLITUDE EM FUNÇÃO DO TEMPO
THETA = asind(AMP/1);%ANGULO EM FUNÇÃO DO TEMPO
%------------------------------------------------------------------
%PLOTAGEM DO GRAFICO AMPLITUDE VS TEMPO
figure(1);
plot(T,AMP);
grid on;
title('AMPLITUDE VS TEMPO');
xlabel('Tempo');
ylabel('Amplitude');
%------------------------------------------------------------------
%PLOTAGEM DO GRÁFICO ANGULO THETA VS TEMPO
figure(2);
plot(T,THETA,'black');
grid on;
title('ANGULO THETA VS TEMPO');
xlabel('Tempo');
ylabel('ANGULO THETA');

