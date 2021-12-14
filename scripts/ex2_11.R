times <- 10000
result <- c()

sample(c(1,0), 1, replace=T,c(0.27, 1-0.27))

for (i in 1:times){
  r1 <- sample(c(2,0), 1,T,c(0.27, 1-0.27)) # 1 cigarro 0 não cigarro
  r2 <- sample(c(8,4), 1,T,c(0.07, 1-0.07)) # 1 charuto 0 não charuto
  r3 <- sample(c(32,16), 1,T,c(0.05, 1-0.05)) # 1 cigEcha 0 não cigEcha
  
  
  result <- rbind(result, sum(r1,r2,r3))
}

20 # 0,0,0 não cigarro, não charuto, não ambos
22 # 1,0,0 cigarro, não charuto, não ambos
24 # 0,1,0 não cigarro, charuto, não ambos
26 # 1,1,0 cigarro, charuto, não ambos
36 # 0,0,1 não cigarro, não charuto, ambos
38 # 1,0,1 cigarro, não charuto, ambos
40 # 0,1,1 não cigarro, charuto, ambos
42 # 1,1,1 cigarro, charuto, ambos

results <- c()

for (k in sort(unique(result))){
  print(k)
  n <- length(result[which(result==k)])/length(result)
  print(n)
  results <- rbind(results, k=n)
}

# resposta da a
length(result[which(result==20)])/length(result[which(!result  %in% c(26,36,38,40))])
70/100 # resultado analítico para comparação

# resposta da b
length(result[which(result %in% c(24,40))])/length(result)


