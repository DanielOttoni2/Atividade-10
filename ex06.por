programa {
    funcao inteiro encontrarMenor(inteiro v[], inteiro tamanho) {
        inteiro menor = v[0]
        para (inteiro i = 1; i < tamanho; i++) {
            se (v[i] < menor) {
                menor = v[i]
            }
        }
        retorne menor
    }

    funcao inicio() {
    }
}