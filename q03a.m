%A)

a0 = 0;
w0 = pi/2;
Np = 2^5;
T = 4;
Ts = T/Np;
x = zeros(1,Np);
t = zeros(1,Np);
Nh = 2;
a = zeros(1,Nh);



for n=1:Np
    t(n) = Ts*n;
    x(n) = a0/2;
    for k=1:Nh
        a(k) = (4/n*pi)*sin(n*(pi/2));
        x(n) =  x(n) + a(k)*cos((2*k-1)*w0*t(n));
    end
end


plot(t,x);
figure;
bar([0 1:2:2*Nh], [a0/2 a])
hold on


xa = abs(fft(x, Np))/Np;
x(1) = xa(1);
x(2:Np/2) = xa(2:Np/2)*2;
stem([0 1:1:2*Nh], [x(1:2*Nh+1)])
axis([0 2*Nh 0 5])





