import math

def pivoteamento(A, B):
    for i in range(len(A)):
        pivo = math.fabs(A[i][i])
        pivolinha = 1

        for j in range(i+1, len(A)):
            if math.fabs(A[i][i])>pivo:
                pivo = math.fabs(A[j][i])
                pivolinha = j

        if pivolinha != 1:
            auxlinha = A[i]
            A[i] = A[pivolinha]
            A[pivolinha] = auxlinha

            baux = B[i]
            B[i] = b[pivolinha]
            b[pivolinha] = baux
    
        for m in range(i+1, len(A)):
            multiplicador = A[m][i]/A[i][i]
            for n in range(i,len(A)):
                A[m][n] -= multiplicador*A[i][n]
            B[m] -= multiplicador*B[i]
   
    for l in range (len(A)):
        print(A(k))
    print()
    print(B)
    calculasolucao(A,B)


def calculasolucao(A,B):
    solucao = []
    for i in range (len(A)):
        solucao.append(0)
    linha = len(A) - 1
    
    while linha >= 0:
        x = b[linha]
        coluna = len(A) - 1

        while coluna > linha:
            x -= A[linha][coluna]*solucao[coluna]
            coluna -= 1 

    x /= A[linha][linha]
    linha -= 1
    solucao[coluna] = x

    for j in range (len(solucao)):
        print("x" + str(j) + "=" + str(solucao[j]) )