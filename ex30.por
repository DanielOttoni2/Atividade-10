programa
{
    inclua biblioteca Texto

    funcao logico buscarPalavra(cadeia matriz[][], inteiro tamanho, cadeia palavra)
    {
        inteiro tamPalavra = Texto.numero_caracteres(palavra)
        
        se (tamPalavra > tamanho)
        {
            retorne falso
        }

        para (inteiro l = 0; l < tamanho; l++)
        {
            para (inteiro c = 0; c <= tamanho - tamPalavra; c++)
            {
                cadeia segmento = ""
                para (inteiro k = 0; k < tamPalavra; k++)
                {
                    segmento = Texto.preencher_a_direita(" ", Texto.numero_caracteres(segmento) + 1, segmento + matriz[l][c + k])
                }
                se (segmento == palavra)
                {
                    retorne verdadeiro
                }
            }
        }

        para (inteiro c = 0; c < tamanho; c++)
        {
            para (inteiro l = 0; l <= tamanho - tamPalavra; l++)
            {
                cadeia segmento = ""
                para (inteiro k = 0; k < tamPalavra; k++)
                {
                    segmento = Texto.preencher_a_direita(" ", Texto.numero_caracteres(segmento) + 1, segmento + matriz[l + k][c])
                }
                se (segmento == palavra)
                {
                    retorne verdadeiro
                }
            }
        }

        retorne falso
    }

    funcao inicio()
    {
        cadeia sopa[5][5] = {
            {"X", "S", "E", "N", "A"},
            {"O", "A", "O", "P", "H"},
            {"S", "E", "N", "A", "I"},
            {"U", "I", "T", "G", "B"},
            {"K", "M", "L", "V", "W"}
        }
        
        cadeia palavraProcurada = "SENAI"

        se (buscarPalavra(sopa, 5, palavraProcurada))
        {
            escreva("A palavra '", palavraProcurada, "' foi encontrada na sopa de letras!\n")
        }
        senao
        {
            escreva("A palavra '", palavraProcurada, "' nao foi encontrada.\n")
        }
    }
}