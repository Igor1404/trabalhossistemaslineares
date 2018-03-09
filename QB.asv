a0 = 1/2; %Definindo o A0 como 0;
w0 = 1; %frequencia inicial
Np = 2^10; %Número de pontos a serem trabalhados
T = 2*pi; % Periodo do sinal

Ts = T/Np;

x = zeros(1,Np); %Sinal de resposta
t = zeros(1,Np); %Variavel de tempo
N = input('Digite o número de harmonicas: ');
b = zeros(1,N);%Pesos da harmonica


%Loop em que calculará a função de acordo com o número de harmonicas.
for n = 1:Np
    t(n) = Ts*n;
    x(n) = a0/2;
    for k=1:N
        b(k) = -1/(pi*k);
        x(n) = x(n) + b(k)*sin(k*w0*t(n));
    end
end
        

%Plotagem do gráfico de acordo com as harmonicas, e os espectros da
%transformada de fourier.
figure(1)
plot(t,x)

figure(2)
bar([0 1:2:2*N],[a0/2 b])
hold on

figure(3)
xa=abs(fft(x,Np))/Np;
x(1)=xa(1);
x(2:Np/2)=xa(2:Np/2)*2;
stem([0 1:1:2*N],[x(1:2*N+1)])
axis([0 2*N 0 2])
hold on
