programa
{
    funcao logico ehPalindromo(inteiro vetor[], inteiro tamanho)
    {
        inteiro inicioVetor = 0
        inteiro fimVetor = tamanho - 1

        enquanto (inicioVetor < fimVetor)
        {
            se (vetor[inicioVetor] != vetor[fimVetor])
            {
                retorne falso
            }
            inicioVetor = inicioVetor + 1
            fimVetor = fimVetor - 1
        }

        retorne verdadeiro
    }

    funcao inicio()
    {
        inteiro teste1[5] = {1, 2, 3, 2, 1}
        inteiro teste2[4] = {1, 2, 3, 4}

        escreva("O vetor 1 eh palindromo? ", ehPalindromo(teste1, 5), "\n")
        escreva("O vetor 2 eh palindromo? ", ehPalindromo(teste2, 4), "\n")
    }
}
