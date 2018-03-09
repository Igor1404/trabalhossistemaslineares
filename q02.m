%Questão 02

%Basta plotar essa questão e explicar como ela age.
x = inline('10.*exp(-t) - 5.*exp(-0.5*t)','t')
t =(0:0.01:5);
plot(t,x(t));
xlabel('t');
ylabel('x(t) = 10*exp(-t) - 5*exp(0.5*t)');
axis([0 5 -1 5]);
