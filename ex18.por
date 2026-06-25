programa
{
    funcao somarLinhaEspecifica(inteiro matriz[][], inteiro colunas, inteiro linhaAlvo)
    {
        inteiro soma = 0
        
        para (inteiro c = 0; c < colunas; c++)
        {
            soma = soma + matriz[linhaAlvo][c]
        }
        
        escreva("A soma dos elementos da linha ", linhaAlvo, " eh: ", soma, "\n")
    }

    funcao inicio()
    {
        inteiro tabela[3][4] = {
            {1, 2, 3, 4},
            {5, 6, 7, 8},
            {9, 10, 11, 12}
        }
        
        somarLinhaEspecifica(tabela, 4, 1)
    }
}