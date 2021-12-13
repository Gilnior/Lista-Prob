# a
times <- 10000

poss <- c(rep(0,19),1)

result <- c()

for (i in 1:times){
  r <- sample(poss, 1)
  if (r==1){
    result <- rbind(result, 1)
  }else{
    result <- rbind(result, 0)
  }
}

mean(result) # chances de abrir para cada tentativa
1/20

# b
times <- 10000

poss <- c(rep(0,19),1)

results <- c()

for (j in 1:20){ # j assume o número de tentativas até abir, escolhi simular até 20
  # por exemplo, para j=1 temos as chances de abrir na primeira tentativa
  result <- c()
  for (i in 1:times){
    r <- sample(poss, j, replace=T)
    
    if (r[j]==1 & sum(r[-j])==0){
      result <- rbind(result, 1)
    }else{
      result <- rbind(result, 0)
    }
  }
  results <- rbind(results, mean(result))
}

results # resultado das simulações para abrir em j tentativas
# alguns resultados conseguidos de forma analítica para comparar
print(results[c(2,3,20)])
(19/20)*(1/20) # para k=2
(19/20)^2*(1/20) # para k=3
(19/20)^19*(1/20) # para k=20
