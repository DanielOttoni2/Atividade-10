programa
{
    funcao calcularMediasTurma(real notas[][], real medias[], inteiro totalAlunos, inteiro totalNotas)
    {
        para (inteiro l = 0; l < totalAlunos; l++)
        {
            real soma = 0.0
            para (inteiro c = 0; c < totalNotas; c++)
            {
                soma = soma + notas[l][c]
            }
            medias[l] = soma / totalNotas
        }
    }

    funcao inicio()
    {
        real notas[4][3] = {
            {7.0, 8.5, 9.0},
            {5.5, 6.0, 5.0},
            {8.0, 7.5, 10.0},
            {9.0, 9.5, 8.5}
        }
        real medias[4]

        calcularMediasTurma(notas, medias, 4, 3)

        para (inteiro i = 0; i < 4; i++)
        {
            escreva("Media do Aluno ", i + 1, ": ", medias[i], "\n")
        }
    }
}