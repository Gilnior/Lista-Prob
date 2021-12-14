num = 100000
M = matrix(rep(0, num), num, 1)

for (i in 1:num){
  A = 0
  B = 0
  while (A<2 & B<2){
    jogA = sample(c(rep(0, 5), rep(1, 5)), 1, 0.5) # 1° jogada do A
    if (jogA){
      A = A + 1
      jogA2 <- sample(c(rep(0, 5), rep(1, 5)), 1, 0.5) # 2° jogada do A
      if (jogA2){
        A = A + 1
        M[i] = 1
      }
    }
    if (A < 2){
      jogB <- sample(c(rep(0, 5), rep(1, 5)), 1, 0.5) # 1° jogada do B
      if (jogB){
        B = B + 1
        jogB2 <- sample(c(rep(0, 5), rep(1, 5)), 1, 0.5) # 2° jogada do B
        if (jogB2){
          B = B + 1
        }
      }
    }
  }
} 

P <- mean(M)
print(P)



