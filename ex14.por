programa
{
    funcao inteiro encontrarMaior(inteiro matriz[][], inteiro linhas, inteiro colunas)
    {
        inteiro maior = matriz[0][0]
        
        para (inteiro l = 0; l < linhas; l++)
        {
            para (inteiro c = 0; c < colunas; c++)
            {
                se (matriz[l][c] > maior)
                {
                    maior = matriz[l][c]
                }
            }
        }
        
        retorne maior
    }

    funcao inicio()
    {
        inteiro tabela[3][3] = {
            {12, 45, 6},
            {78, 23, 9},
            {14, 55, 81}
        }
        inteiro maiorValor
        
        maiorValor = encontrarMaior(tabela, 3, 3)
        
        escreva("O maior valor presente na matriz eh: ", maiorValor, "\n")
    }
}