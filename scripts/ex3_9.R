result <- c()

# cada variavel é uma urna e 1 é bola branca e 0 é bola preta
a <- c(rep(1,2), rep(0,4))
b <- c(rep(1,8), rep(0,4))
c <- c(rep(1,1), rep(0,4))

times <- 100000

for (i in 1:times){
  # escolha aleatória de cada urna
  r1 <- sample(a,1)
  r2 <- sample(b,1)
  r3 <- sample(c,1)
  if (sum(r1,r2,r3) == 2 ){# apenas quando duas brancas foram escolhidas
    if (r1==1){ # 1 para casos em que a urna é branca
      result <- rbind(result, 1)
    }else{ # 0 para outros casos
      result <- rbind(result, 0)
    }
  }
}

print(mean(result)) # resultado
72/104 # resultado analítico