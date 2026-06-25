programa
{
    funcao carregarMatriz(inteiro matriz[][], inteiro linhas, inteiro colunas)
    {
        para (inteiro l = 0; l < linhas; l++)
        {
            para (inteiro c = 0; c < colunas; c++)
            {
                escreva("Digite o valor para a posicao [", l, "][", c, "]: ")
                leia(matriz[l][c])
            }
        }
    }

    funcao inicio()
    {
        inteiro minhaMatriz[2][3]
        
        carregarMatriz(minhaMatriz, 2, 3)
        
        escreva("\nMatriz preenchida com sucesso!\n")
    }
}