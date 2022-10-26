clear

deff('y = f(x)', 'y = exp(x) - 3*x ');
deff('y = der(x)', 'y = exp(x) - 3');

epsilon1 = 10^(-2);
epsilon2 = 10^(-2);
Nmax = 100;
k = 1;
x(k) = 1.7;
F(k)=f(x(k));
if abs(f(x(k))) < epsilon1
            disp (x(1), 'a raiz é ')
else
        k=k+1;
        x(k) = x(k-1) - f(x(k-1))/der(x(k-1));
        F(k)=f(x(k));
        while (((abs (f(x(k))))>= epsilon1) & ((abs(x(k)-x(k-1)))>= epsilon2) & (k <= Nmax));
            k=k+1;
            x(k) = x(k-1) - f(x(k-1))/der(x(k-1));
            F(k) =f(x(k));
        end
        disp (x(k), 'a raiz é ')
end
disp(F, 'f(x)=', x, 'x=')
