programa
{
    funcao logico procurarValor(inteiro vetor[], inteiro tamanho, inteiro numeroProcurado)
    {
        para (inteiro i = 0; i < tamanho; i++)
        {
            se (vetor[i] == numeroProcurado)
            {
                retorne verdadeiro
            }
        }
        
        retorne falso
    }

    funcao inicio()
    {
        inteiro valores[5] = {10, 25, 42, 8, 99}
        logico resultadoDaBusca
        
        resultadoDaBusca = procurarValor(valores, 5, 42)
        escreva("Busca pelo numero 42: ", resultadoDaBusca, "\n")
        
        resultadoDaBusca = procurarValor(valores, 5, 7)
        escreva("Busca pelo numero 7: ", resultadoDaBusca, "\n")
    }
}