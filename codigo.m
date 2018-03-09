%Atividade_03 no Matlab
%Equipe: Igor Rodrigues / Bruna Valentim
%Disciplina: Sistemas Lineares
%Professor: Vandilberto



%Consiste em mostrar o gráfico das transformada de Fourier das funções
%resolvidas, e com os espectros magnéticos.

%Função A

x = inline('mod(t+pi/2,2*pi)<=pi');
t = linspace(-2*pi,2*pi,1000);


sumterms = zeros(16, length(t));
sumterms(1,:) = 1/2;


for n = 1:size(sumterms,1)-1
    sumterms(n+1,:) = (2/(pi*n)*sin(pi*n/2)*cos(n*t)); 
end

Xn = cumsum(sumterms);
figure(1);
clf;
ind = 0;
for N = [0,1:2:size(sumterms,1)-1]
    ind = ind +1;
    subplot(3,3,ind);
    plot(t, Xn(N+1,:),t,x(t),'k--');
    axis([-2*pi 2*pi -0.2 1.2]);
    xlabel('t');
    ylabel(['x_(',num2str(N),')(t)'])    
end
