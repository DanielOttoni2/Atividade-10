programa
{
    inclua biblioteca Texto

    funcao cadeia encontrarNomeMaisLongo(cadeia nomes[], inteiro tamanho)
    {
        cadeia nomeMaisLongo = nomes[0]
        
        para (inteiro i = 1; i < tamanho; i++)
        {
            se (Texto.numero_caracteres(nomes[i]) > Texto.numero_caracteres(nomeMaisLongo))
            {
                nomeMaisLongo = nomes[i]
            }
        }
        
        retorne nomeMaisLongo
    }

    funcao inicio()
    {
        cadeia listaNomes[4] = {"Ana", "Guilherme", "Maria", "Pedro"}
        cadeia resultado
        
        resultado = encontrarNomeMaisLongo(listaNomes, 4)
        
        escreva("O nome mais longo eh: ", resultado, "\n")
    }
}