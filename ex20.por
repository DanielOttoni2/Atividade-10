programa
{
    funcao somarMatrizes(inteiro matrizA[][], inteiro matrizB[][], inteiro matrizR[][], inteiro linhas, inteiro colunas)
    {
        para (inteiro l = 0; l < linhas; l++)
        {
            para (inteiro c = 0; c < colunas; c++)
            {
                matrizR[l][c] = matrizA[l][c] + matrizB[l][c]
            }
        }
    }

    funcao inicio()
    {
        inteiro A[2][2] = {
            {1, 2},
            {3, 4}
        }
        inteiro B[2][2] = {
            {5, 6},
            {7, 8}
        }
        inteiro R[2][2]

        somarMatrizes(A, B, R, 2, 2)

        para (inteiro l = 0; l < 2; l++)
        {
            para (inteiro c = 0; c < 2; c++)
            {
                escreva(R[l][c], "\t")
            }
            escreva("\n")
        }
    }
}