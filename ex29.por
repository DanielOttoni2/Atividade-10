programa
{
    funcao multiplicarMatrizes(inteiro A[][], inteiro B[][], inteiro R[][], inteiro linhasA, inteiro colunasA, inteiro colunasB)
    {
        para (inteiro l = 0; l < linhasA; l++)
        {
            para (inteiro c = 0; c < colunasB; c++)
            {
                R[l][c] = 0
                para (inteiro k = 0; k < colunasA; k++)
                {
                    R[l][c] = R[l][c] + (A[l][k] * B[k][c])
                }
            }
        }
    }

    funcao inicio()
    {
        inteiro matrizA[2][3] = {
            {1, 2, 3},
            {4, 5, 6}
        }
        
        inteiro matrizB[3][2] = {
            {7, 8},
            {9, 10},
            {11, 12}
        }
        
        inteiro matrizR[2][2]

        multiplicarMatrizes(matrizA, matrizB, matrizR, 2, 3, 2)

        para (inteiro l = 0; l < 2; l++)
        {
            para (inteiro c = 0; c < 2; c++)
            {
                escreva(matrizR[l][c], "\t")
            }
            escreva("\n")
        }
    }
}