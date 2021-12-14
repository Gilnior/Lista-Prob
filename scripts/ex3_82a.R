num <- 1000000 # Número de corridas
M <- matrix(rep(0, num), num, 1) # Matrix 'num' por 1

for (i in 1:num){
  cara1 <- FALSE
  cara2 <- FALSE
  while (!cara1 & !cara2){
    # 0 = coroa
    # 1 = cara
    jogA <- sample(c(rep(0, 20), rep(1, 20)), 2) # Vetor com a jogada do jogador A
    if(sum(jogA) == 2){
      M[i] = 1
      cara1 <- TRUE 
      # Se a soma for 1, significará que o jogador A tirou cara e cara
      # Vencendo a partida, e atribuindo o valor verdadeiro à variável cara1.
    }
    if(sum(jogA) < 2){
      jogB <- sample(c(rep(0, 20), rep(1, 20)), 2)
      if(sum(jogB) == 2){
        cara2 <- TRUE
        # Como a matriz M criada no começo é preenchida com valor 0, não necessita
        # preenchê-la nessa condicional com 0. Está implicitamente incrementando
        # tal número na matriz.
      } 
    }
  }
}

Prob <- mean(M) # Probabilidade do evento acontecer
print(Prob) # 0.57 aproximadamente

