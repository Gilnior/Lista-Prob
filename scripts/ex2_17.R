poss <- c(rep(1,8), rep(0,56))
times <- 1000000

result <- c()
for (i in 1:times){
  M <- matrix(sample(poss, 64, replace=F), nrow = 8, ncol = 8)
  # recria um tabuleiro com 8 peças colocadas aleatoriamente
  l <- c()
  c <- c()
    
  for (i in 1:8){
    l <-rbind(l, sum(M[i, ]))
    c <- rbind(c, sum(M[, i]))
  }
  # armazena as somas das linhas e colunas
  
  # se alguma soma for 0, as torres não se encostam
  if (length(l[which(l==0)])==0 & length(c[which(c==0)])==0){
    result <- rbind(result,1)
  }else{
    result <- rbind(result, 0)
  }
}

mean(result)