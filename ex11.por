programa
{
    funcao exibirMatriz(inteiro matriz[][], inteiro linhas, inteiro colunas)
    {
        para (inteiro l = 0; l < linhas; l++)
        {
            para (inteiro c = 0; c < colunas; c++)
            {
                escreva(matriz[l][c], "\t")
            }
            escreva("\n")
        }
    }

    funcao inicio()
    {
        inteiro dados[3][4] = {
            {10, 20, 30, 40},
            {50, 60, 70, 80},
            {90, 100, 110, 120}
        }
        
        exibirMatriz(dados, 3, 4)
    }
}