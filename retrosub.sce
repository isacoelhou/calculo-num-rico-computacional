clear 


A=[2 3 -1 5; 0 -2 -1 7; 0 0 5 15]

[m,n] = size(A)
x(m) = A(m,n)/A(m,m)
for  k = (m-1):-1:1
    s=0
    for j = (k+1):m
        s = s + A(k,j)*x(j)
    end
    x(k) = (A(k,n)-s)/A(k,k)
end
disp(x, 'vetor solução x =')
