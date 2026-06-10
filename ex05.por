programa {
  funcao inteiro MaiorVetor(inteiro v[], inteiro tamanho) {
    inteiro maior = v[0]

    para(inteiro i = 1; i < tamanho; i++){
      se (v[i] > maior) {
        maior = v[i]
      }
    }
    retorne maior
  }

  funcao inicio() {
    inteiro tamanho = 5 
    inteiro vetor[5]    
    inteiro resultado

    para(inteiro i = 0; i < tamanho; i++) {
      escreva("Escreva o numero Vetor[", i,"]: ")
      leia(vetor[i]) 
    }

    resultado = MaiorVetor(vetor, tamanho)
escreva("O maior Vetor tem o resultudo de: ", resultado,"\n")
   
  }
}