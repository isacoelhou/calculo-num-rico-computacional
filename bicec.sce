deff('y=f(x)','y=exp(x)-3*x');

a=1
b=2

f(a)
f(b)


while (b - a) > 0.1 
    x= (a+b)/2
    if (f(a)*f(x)) < 0 
        b = x
    else
         a = x
    end
end

disp((a+b)/2)

