%------------------------------gr�ficos de amplitude, angulo de forma
%senoidal do movimento de uma perna humana---------------------%

%DECLARA��O DE VARI�VEIS
l=0.83;%COMPRIMENTO
A=(pi/15); %ANGULO M�XIMO EM RADIANO
amplitude=(sin(A))/(l);%AMPLITUDE
T=(0:0.1:10);%PERIODO DE TEMPO
AMP = amplitude*(sin(pi*T));%AMPLITUDE EM FUN��O DO TEMPO
THETA = asind(AMP/1);%ANGULO EM FUN��O DO TEMPO
%------------------------------------------------------------------
%PLOTAGEM DO GRAFICO AMPLITUDE VS TEMPO
figure(1);
plot(T,AMP);
grid on;
title('AMPLITUDE VS TEMPO');
xlabel('Tempo');
ylabel('Amplitude');
%------------------------------------------------------------------
%PLOTAGEM DO GR�FICO ANGULO THETA VS TEMPO
figure(2);
plot(T,THETA,'black');
grid on;
title('ANGULO THETA VS TEMPO');
xlabel('Tempo');
ylabel('ANGULO THETA');

