clear


k = 1

N(k) = 30

p = 0

while p == 0
  quociente = N(k)/2
  q(k) = int(quociente)
  r(k) = N(k) - 2*q(k)
  a(k) = r(k) 
  
  if q(k) == 0 then
  	p = 1
  
  else
    N(k+1) = q(k)
    k = k+1
  
  end
end

disp("Tentativa:")
for i=1:k
	disp(a(k))
end
disp("Número Binário:")
disp(a)
