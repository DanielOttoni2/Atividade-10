programa
{
    funcao inteiro somarDiagonalSecundaria(inteiro matriz[][], inteiro tamanho)
    {
        inteiro soma = 0
        
        para (inteiro i = 0; i < tamanho; i++)
        {
            soma = soma + matriz[i][tamanho - 1 - i]
        }
        
        retorne soma
    }

    funcao inicio()
    {
        inteiro matrizQuadrada[3][3] = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        }
        inteiro resultado
        
        resultado = somarDiagonalSecundaria(matrizQuadrada, 3)
        
        escreva("A soma da diagonal secundaria eh: ", resultado, "\n")
    }
}