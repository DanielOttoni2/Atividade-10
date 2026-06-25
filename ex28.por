programa
{
    funcao exibirTabuleiro(cadeia tabuleiro[][])
    {
        escreva("\n")
        para (inteiro l = 0; l < 3; l++)
        {
            para (inteiro c = 0; c < 3; c++)
            {
                escreva(" ", tabuleiro[l][c], " ")
                se (c < 2) 
                { 
                    escreva("|") 
                }
            }
            escreva("\n")
            se (l < 2) 
            { 
                escreva("---+---+---\n") 
            }
        }
        escreva("\n")
    }

    funcao fazerJogada(cadeia tabuleiro[][], cadeia jogador)
    {
        inteiro l, c
        logico jogadaValida = falso

        enquanto (nao jogadaValida)
        {
            escreva("Jogador ", jogador, ", digite a linha (0, 1 ou 2): ")
            leia(l)
            escreva("Jogador ", jogador, ", digite a coluna (0, 1 ou 2): ")
            leia(c)

            se (l >= 0 e l <= 2 e c >= 0 e c <= 2)
            {
                se (tabuleiro[l][c] == " ")
                {
                    tabuleiro[l][c] = jogador
                    jogadaValida = verdadeiro
                }
                senao
                {
                    escreva("Posicao ocupada! Escolha outra coordenada.\n")
                }
            }
            senao
            {
                escreva("Coordenadas invalidas! Use apenas 0, 1 ou 2.\n")
            }
        }
    }

    funcao logico checarVitoria(cadeia tabuleiro[][])
    {
        para (inteiro i = 0; i < 3; i++)
        {
            se (tabuleiro[i][0] != " " e tabuleiro[i][0] == tabuleiro[i][1] e tabuleiro[i][1] == tabuleiro[i][2])
            {
                retorne verdadeiro
            }
            se (tabuleiro[0][i] != " " e tabuleiro[0][i] == tabuleiro[1][i] e tabuleiro[1][i] == tabuleiro[2][i])
            {
                retorne verdadeiro
            }
        }

        se (tabuleiro[0][0] != " " e tabuleiro[0][0] == tabuleiro[1][1] e tabuleiro[1][1] == tabuleiro[2][2])
        {
            retorne verdadeiro
        }
        se (tabuleiro[0][2] != " " e tabuleiro[0][2] == tabuleiro[1][1] e tabuleiro[1][1] == tabuleiro[2][0])
        {
            retorne verdadeiro
        }

        retorne falso
    }

    funcao inicio()
    {
        cadeia tabuleiro[3][3] = {
            {" ", " ", " "},
            {" ", " ", " "},
            {" ", " ", " "}
        }
        cadeia jogadorAtual = "X"
        inteiro jogadas = 0
        logico jogoRodando = verdadeiro

        enquanto (jogoRodando e jogadas < 9)
        {
            exibirTabuleiro(tabuleiro)
            fazerJogada(tabuleiro, jogadorAtual)
            
            se (checarVitoria(tabuleiro))
            {
                exibirTabuleiro(tabuleiro)
                escreva("Parabens! O jogador ", jogadorAtual, " venceu!\n")
                jogoRodando = falso
            }
            senao
            {
                se (jogadorAtual == "X")
                {
                    jogadorAtual = "O"
                }
                senao
                {
                    jogadorAtual = "X"
                }
                jogadas = jogadas + 1
            }
        }

        se (jogoRodando)
        {
            exibirTabuleiro(tabuleiro)
            escreva("Deu velha! O jogo empatou.\n")
        }
    }
}