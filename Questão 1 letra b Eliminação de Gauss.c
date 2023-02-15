#include <stdio.h>

int main(void) {

float Matriz[3][4];
for (int i = 0; i < 3; i++) {
for (int j = 0; j < 4; j++) {
    scanf("%f", &Matriz[i][j]);
}}

printf("\nMatriz aumentada do sitema:\n");

for (int i = 0; i < 3; i++) {
for (int j = 0; j < 4; j++) {
    if (j == 3) 
        printf(" | ");
    printf(" %.2f ", Matriz[i][j]);
}
    printf("\n");
}

int maior = 0, posiMaior = 0, MatrizInt = 0;
float pivo = Matriz[0][0], mult;

printf("\n");

for (int i = 1; i < 3; i++) {
    mult = Matriz[i][0] / (pivo);
    for (int j = 0; j < 4; j++) {
        Matriz[i][j] = Matriz[i][j] - mult * Matriz[0][j];
}}

printf("\nZerando os elementos abaixo do primeiro pivo \n");

for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
        if (j == 3) 
            printf(" | ");
    printf(" %.2f ", Matriz[i][j]);
}
    printf("\n");
}

    pivo = Matriz[1][1];
    maior = 0;
    posiMaior = 0;
    MatrizInt = 0;
    mult = Matriz[2][1] / (pivo);

for (int j = 0; j < 4; j++) 
    Matriz[2][j] = Matriz[2][j] - mult * Matriz[1][j];

mult=0;

for (int i = 2; i < 3; i++) {
    mult = Matriz[i][1] / (pivo);
    for (int j = 0; j < 4; j++) {
        Matriz[i][j] = Matriz[i][j] - mult * Matriz[0][j];
}}

printf("Zerando os elementos abaixo do segundo pivo \n");

for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
        if (j == 3) {
    printf(" | ");
}
    printf(" %.2f ", Matriz[i][j]);
}
    printf("\n");
}

printf("Calculo da Solução do Sistema: \n");

float x = 0, y = 0, z =0;


z = Matriz[2][3] / Matriz[2][2];
y = (Matriz[1][3] - (Matriz[1][2] * z)) / Matriz[1][1];
x = (Matriz[0][3] - Matriz[0][2] * z - Matriz[0][1] * y) / Matriz[0][0];


printf("O Resultado da Linha 1 é: \n");
printf("x = %f\n", x);
printf("O Resultado da Linha 2 é: \n");
printf("y = %f\n", y);
printf("O Resultado da Linha 3 é: \n");
printf("z = %f\n", z);

return 0;

}