programa
{
    funcao somarColunaEspecifica(inteiro matriz[][], inteiro linhas, inteiro colunaAlvo)
    {
        inteiro soma = 0
        
        para (inteiro l = 0; l < linhas; l++)
        {
            soma = soma + matriz[l][colunaAlvo]
        }
        
        escreva("A soma dos elementos da coluna ", colunaAlvo, " eh: ", soma, "\n")
    }

    funcao inicio()
    {
        inteiro tabela[3][4] = {
            {1, 2, 3, 4},
            {5, 6, 7, 8},
            {9, 10, 11, 12}
        }
        
        somarColunaEspecifica(tabela, 3, 1)
    }
}