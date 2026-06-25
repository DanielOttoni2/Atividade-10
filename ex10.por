programa
{
    funcao copiarVetor(inteiro vetorA[], inteiro vetorB[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i++)
        {
            vetorB[i] = vetorA[i]
        }
    }

    funcao inicio()
    {
        inteiro vetorOriginal[4] = {7, 14, 21, 28}
        inteiro vetorCopia[4] = {0, 0, 0, 0}
        
        copiarVetor(vetorOriginal, vetorCopia, 4)
        
        escreva("Elementos do vetor B apos a copia:\n")
        para (inteiro i = 0; i < 4; i++)
        {
            escreva(vetorCopia[i], " ")
        }
        escreva("\n")
    }
}