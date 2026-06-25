programa
{
    funcao ordenarVetor(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho - 1; i++)
        {
            para (inteiro j = 0; j < tamanho - 1 - i; j++)
            {
                se (vetor[j] > vetor[j + 1])
                {
                    inteiro auxiliar = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = auxiliar
                }
            }
        }
    }

    funcao exibirVetor(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i++)
        {
            escreva(vetor[i], " ")
        }
        escreva("\n")
    }

    funcao inicio()
    {
        inteiro numeros[5] = {5, 1, 4, 2, 8}

        ordenarVetor(numeros, 5)
        exibirVetor(numeros, 5)
    }
}