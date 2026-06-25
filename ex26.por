programa
{
    funcao carregarEstoque(cadeia nomes[], inteiro estoque[], real precos[])
    {
        para (inteiro i = 0; i < 5; i++)
        {
            escreva("Nome do produto ", i + 1, ": ")
            leia(nomes[i])
            escreva("Quantidade em estoque: ")
            leia(estoque[i])
            escreva("Preco: R$ ")
            leia(precos[i])
            escreva("\n")
        }
    }

    funcao consultarProduto(cadeia nomes[], inteiro estoque[], real precos[])
    {
        cadeia produtoProcurado
        logico encontrado = falso
        
        escreva("Digite o nome do produto para busca: ")
        leia(produtoProcurado)

        para (inteiro i = 0; i < 5; i++)
        {
            se (nomes[i] == produtoProcurado)
            {
                escreva("\nProduto: ", nomes[i], "\n")
                escreva("Estoque: ", estoque[i], " unidades\n")
                escreva("Preco: R$ ", precos[i], "\n\n")
                encontrado = verdadeiro
            }
        }

        se (nao encontrado)
        {
            escreva("\nProduto nao encontrado no estoque.\n\n")
        }
    }

    funcao inteiro obterIndiceMaisCaro(real precos[])
    {
        inteiro indiceMaior = 0
        real maiorPreco = precos[0]

        para (inteiro i = 1; i < 5; i++)
        {
            se (precos[i] > maiorPreco)
            {
                maiorPreco = precos[i]
                indiceMaior = i
            }
        }

        retorne indiceMaior
    }

    funcao relatorioMaisCaro(cadeia nomes[], inteiro estoque[], real precos[])
    {
        inteiro indiceMaisCaro = obterIndiceMaisCaro(precos)

        escreva("\n--- PRODUTO MAIS CARO ---\n")
        escreva("Nome: ", nomes[indiceMaisCaro], "\n")
        escreva("Estoque: ", estoque[indiceMaisCaro], "\n")
        escreva("Preco: R$ ", precos[indiceMaisCaro], "\n\n")
    }

    funcao menu(cadeia nomes[], inteiro estoque[], real precos[])
    {
        inteiro opcao = 0

        enquanto (opcao != 4)
        {
            escreva("=== CONTROLE DE ESTOQUE ===\n")
            escreva("1. Carregar Estoque\n")
            escreva("2. Consultar Produto\n")
            escreva("3. Relatorio do Mais Caro\n")
            escreva("4. Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            se (opcao == 1)
            {
                carregarEstoque(nomes, estoque, precos)
            }
            senao se (opcao == 2)
            {
                consultarProduto(nomes, estoque, precos)
            }
            senao se (opcao == 3)
            {
                relatorioMaisCaro(nomes, estoque, precos)
            }
        }
    }

    funcao inicio()
    {
        cadeia nomes[5]
        inteiro estoque[5]
        real precos[5]

        menu(nomes, estoque, precos)
    }
}