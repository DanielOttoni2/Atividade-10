programa {
  funcao contarPares(inteiro vetor[], inteiro tamanho) {
    inteiro contagem = 0
    para (inteiro i = 0; i < tamanho; i++) {
      se (vetor[i] % 2 == 0) {
        contagem++
      }
    }
    escreva(contagem)
  }
  
  funcao inicio() {}
}