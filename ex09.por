programa
{
    funcao imprimirInvertido(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = tamanho - 1; i >= 0; i--)
        {
            escreva(vetor[i], " ")
        }
        escreva("\n")
    }

    funcao inicio()
    {
        inteiro numeros[6] = {10, 20, 30, 40, 50, 60}
        
        escreva("Vetor invertido: ")
        imprimirInvertido(numeros, 6)
    }
}