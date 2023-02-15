clear();
clc();
printf("\n////////////INTERPOLAÇÃO PELO MÉTODO DE LAGRANGE //////////\n"); 

///// X=vetor linha com valores xi e Y=vetor linha com os valores yi//////

X=[-1.0, 0.0, 2.0];
Y=[4.0, 1.0, -1];


grau_polinomio = length(X) - 1; //grau < ou = a 2; para cj com 3 pontos
disp("///////////////////////TABELA DE DADOS:///////////////////");
for i = 1:grau_polinomio + 1
    printf("   x = %.6f; f(x) = %.6f\n", X(i), Y(i));
end

x = poly(0,"x");

PolLagrange = 0;
for i = 1:grau_polinomio+1
    coeficiente = 1;
    for j = 1:grau_polinomio+1  
        if i ~= j then             
            coeficiente = coeficiente * (x - X(j)) / (X(i) - X(j))          
        end
    end
    coeficientesLagrange(i) = coeficiente;  
    PolLagrange = PolLagrange + coeficiente * Y(i);
end
disp("////////////////COEFICIENTES DE LAGRANGE://///////////////");  
disp(coeficientesLagrange)
disp("///O POLINOMIO INTERPOLADOR PELO MÉTODO DE LAGRANGE É://///");
disp(PolLagrange)

/*disp("/////////////////////CALCULO DO ERRO RELATIVO////////////////////")
disp("O valor exato de f(0.2749) com 6 digitos significativos é:")
Valor_funcao=exp(0.2749)
printf("\n   %.6f\n", abs(Valor_funcao));
disp("O valor aproximado de f(0.2749) via interpolação polinomial é:")
y=poly([0.9644 +1.285],'x','c')

Aprox_polinomial=[horner(y,0.2749)]
printf("\n   %.6f\n", Aprox_polinomial);
Erro_relativo=(abs(Valor_funcao-Aprox_polinomial)/Valor_funcao)
Erro_percentual=Erro_relativo*100

printf(" \n O erro relativo Per. ~ |(%f - %f) / %f| * 100%% = %f %%\n\n", Valor_funcao, Aprox_polinomial, Valor_funcao, abs(100 * (Aprox_polinomial-Valor_funcao) / Valor_funcao));

disp("////////////CÁLCULO DA ESTIMATIVA DE ERRO DE TRUCAMENTO//////////")
i=1
ponto_x= 0.2749;
função_derivada=exp(0.2749);
fatorial=factorial(2)
Erro_truncamento=abs((ponto_x-X(i))*(ponto_x-X(i+1)))*abs(função_derivada/fatorial)

printf(" \n O erro de truncamento é ~ %f %%\n", Erro_truncamento);