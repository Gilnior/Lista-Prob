num = 100000 # Número de corridas
M = c() # Vetor que conterá os vencedores das "num" partidas

for (i in 1:num){
  A = 0
  B = 0
  while (A<2 & B<2){
    jogA = sample(c(rep(0, 10), rep(1, 10)), 1) # 1° jogada do A
    if (jogA){
      A = A + 1
      # Se o jogador A tirar cara na 1° jogada, a var A somará um ponto  e ele 
      # jogará novamente.
      jogA2 <- sample(c(rep(0, 10), rep(1, 10)), 1) # 2° jogada do A
      if (jogA2){
        A = A + 1
        M <- rbind(M, 1)
        # Se tirar cara na 2° jogada, vencerá o jogo, alocando o valor 1 no vetor M.
      }
    }
    if (A < 2){
      # Se o A não vencer o jogo em sua rodada, o B tem a oportunidade de jogar.
      jogB <- sample(c(rep(0, 10), rep(1, 10)), 1) # 1° jogada do B
      if (jogB){
        B = B + 1
        # Se a 1° jogada do B der cara, poderá jogar mais uma vez, além de somar 1
        # à variável B.
        jogB2 <- sample(c(rep(0, 10), rep(1, 10)), 1) # 2° jogada do B
        if (jogB2){
          B = B + 1
          M <- rbind(M, 0)
          # Caso o jogador B tire cara nas 2 jogadas, ganhará a partida, inserindo
          # o valor 0 (seu valor de vitória) no vetor M.
        }
      }
    }
  }
} 

P <- mean(M) # Cálculo da probabilidade
print(P) # Aproximadamente 0.589



