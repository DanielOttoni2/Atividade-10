programa {

  funcao carregarVetor(inteiro &vetor[]) {
    inteiro i
    inteiro vD
    para(i = 0; i < 3; i++) {
      escreva("Coloque numeros [", i, "]: ")
      leia(vD)
      vetor[i] = vD 
    }
  }

  funcao inteiro somarVetor(inteiro vetor[]) {
    inteiro i
    inteiro soma = 0 
    para(i = 0; i < 3; i++) {
      soma = soma + vetor[i] 
    }
    retorne soma 
  }

  funcao inicio() {
    inteiro meuVetor[3]
    inteiro resultadoSoma

    carregarVetor(meuVetor)
    resultadoSoma = somarVetor(meuVetor)

    escreva("\nA soma de todos os elementos é: ", resultadoSoma, "\n")
  }
}