programa {funcao carregarVetor(inteiro &vetor[]) {
    inteiro i
    inteiro valorDigitado
    para(i = 0; i < 3; i++) {
      escreva("Digite o valor para a posição [", i, "]: ")
      leia(valorDigitado) 
      vetor[i] = valorDigitado 
    }
  }

 funcao exibirVetor(inteiro vetor[]) {
    inteiro i
    escreva("\nValores do vetor: " , vetor,"\n")
    para(i = 0; i < 3; i++) {
    escreva(vetor[i], " ")
        }
    escreva("\n")
  }
funcao inicio() {
    inteiro meuVetor[3]
    carregarVetor(meuVetor)
    exibirVetor(meuVetor)
  
  }
}