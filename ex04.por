programa {
funcao real exibirVetor(real notas[]){
real i
real soma = 0.0
real media

para(i=0;i<4;i++){ 
soma = soma + notas[i]}
media = soma/4
retorne media
}
funcao inicio() {
real minhasNotas[4]
real mediaFinal
real i
para(i = 0; i < 4; i++) {
escreva("Nota ", i + 1, ": ")
leia(minhasNotas[i])}
mediaFinal = exibirVetor(minhasNotas)
escreva("\nA média calculada do aluno é: ", mediaFinal, "\n")
 }
  }
