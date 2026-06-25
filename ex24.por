programa
{
    funcao transporMatriz(inteiro matrizA[][], inteiro matrizB[][], inteiro linhasA, inteiro colunasA)
    {
        para (inteiro l = 0; l < linhasA; l++)
        {
            para (inteiro c = 0; c < colunasA; c++)
            {
                matrizB[c][l] = matrizA[l][c]
            }
        }
    }

    funcao inicio()
    {
        inteiro A[3][4] = {
            {1, 2, 3, 4},
            {5, 6, 7, 8},
            {9, 10, 11, 12}
        }
        inteiro B[4][3]

        transporMatriz(A, B, 3, 4)

        para (inteiro l = 0; l < 4; l++)
        {
            para (inteiro c = 0; c < 3; c++)
            {
                escreva(B[l][c], "\t")
            }
            escreva("\n")
        }
    }
}