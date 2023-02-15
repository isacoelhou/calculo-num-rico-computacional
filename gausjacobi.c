#include <stdio.h>

 float inverte(M[100][100], ordem)
    {
        float n[ordem+1];
       
         for (int i = 0; i < ordem; i++){
         for(int j = 0; j < ordem+1; j++){
            if (!(i == j)){
             M[i][j] = -M[i][j];
             M[i][j] = M[i][j]/M[i][i];
            }
             
        }
    }

     for (int i = 0; i < ordem; i++){
         for(int j = 0; j < ordem+1; j++){
            if (i == j){
            if(M[i][j] != M[i][0]){
            M[i][0] = 1;
            M[i][j] = M[i][0];
        }
        }
        }
    }
    }

int main(){
    int ordem;
    float M[100][100];

    printf("Qual a ordem da matriz?\n");
    scanf("%d", &ordem);

    for (int i = 0; i < ordem; i++){
        for(int j = 0; j < ordem+1; j++)
            scanf("%f", M[i][j]);
    }

    float maior[ordem];

    for (int i = 0; i < ordem; i++){
        for(int j = 0; j < ordem+1; j++){
        if (M[i][j] > maior[i])
            maior[i] = M[i][j];
    }}

    for (int i = 0; i < ordem; i++)
    {
        if (maior[i] != M[i][i])
        {
        printf("Não é possível usar esse método\n");
        break;
        }
    }

   



    LINHA 0 = M[0][0] = -M[0][1] 
    NOVA n
    n[i][j] = M[n][n] 
    n[i][j+1] = -M[n[n]]

    return 0;
}