programa
{
    funcao rotacionarEsquerda(inteiro vetor[], inteiro tamanho)
    {
        se (tamanho > 1)
        {
            inteiro primeiroElemento = vetor[0]
            
            para (inteiro i = 0; i < tamanho - 1; i++)
            {
                vetor[i] = vetor[i + 1]
            }
            
            vetor[tamanho - 1] = primeiroElemento
        }
    }

    funcao inicio()
    {
        inteiro numeros[4] = {10, 20, 30, 40}

        rotacionarEsquerda(numeros, 4)

        para (inteiro i = 0; i < 4; i++)
        {
            escreva(numeros[i], " ")
        }
        escreva("\n")
    }
}