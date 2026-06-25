programa
{
    funcao inteiro somarElementos(inteiro matriz[][], inteiro linhas, inteiro colunas)
    {
        inteiro soma = 0
        
        para (inteiro l = 0; l < linhas; l++)
        {
            para (inteiro c = 0; c < colunas; c++)
            {
                soma = soma + matriz[l][c]
            }
        }
        
        retorne soma
    }

    funcao inicio()
    {
        inteiro dados[2][3] = {
            {5, 10, 15},
            {20, 25, 30}
        }
        inteiro resultado
        
        resultado = somarElementos(dados, 2, 3)
        
        escreva("A soma de todos os elementos da matriz eh: ", resultado, "\n")
    }
}