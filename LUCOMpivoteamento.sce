// decomposição LU 
// entrada: A[n,n] e b[n,1]; saída X[n,1]
// LU = A
// Isadora Coelho Araujo

printf("\n\nDecomposição LU (sem pivoteamento)\n");
A = [2,-1,0;-1,2,-1;0,-1,2];
B= [1,1,1];

printf("\nMatriz A\n");
disp(A);
printf("\nMatriz B\n");
disp(B);

n=length(B);
L = zeros(n,n);
U = zeros(n,n);
for (i=1:n), 
    L(i,i) = 1;
end;


j = 1;
for i = (1:n)
    for k = 1:n-1
    v = A(k:n,k)
    [a,b]=max(abs(v))
    b = b+(k-1)
    f = A(k,:)
    A(k,:)=A(b,:)
    A(b,:)= f
    for i = (k+1):n
        m = A(i,k)/A(k,k);
        A(i,k)=0;
        for j = (k+1):n+1
            A(i,j) = A(i,j)-m*A(k,j);
        end
    end
    printf('pivoteando...')
    disp(A)
end
    if (i <= j) then
        U(i,j) = A(i,j);
    else
        L(i,j) = A(i,j)/U(j,j);
    end;
end;

for i = (1:n),
    for (j=2:n)
        SumLU = 0;
        for k = (1:j-1)
            SumLU = SumLU + L(i,k)*U(k,j);
        end;
        if (i<=j) then
            U(i,j) = A(i,j) - SumLU;
        else
            L(i,j) = (A(i,j) - SumLU) / U(j,j);
        end;
    end;
end;


printf("\nFator U\n");
disp(U);
printf("\nFator L\n");
disp(L);


Y = zeros(n,1);
Y(1) = B(1);
for i = (2:n)
    SumLY = 0;
    for j = (1:i-1)
        SumLY = SumLY + L(i,j)*Y(j);
    end;
    Y(i) = B(i) - SumLY;
end;
printf("\n\nSolução Y (LY=B)\n");
disp(Y);


X = zeros(n,1);
X(n) = Y(n) / U(n,n);
for i = (n-1:-1:1)
    SumUX = 0;
    for j = (i+1:n)
        SumUX = SumUX +U(i,j)*X(j);
    end;
    X(i) = (Y(i) - SumUX) / U(i,i);

end;
printf("\n\nSolução X (UX=Y)\n");
disp(X);
