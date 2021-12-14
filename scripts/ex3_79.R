poss <- c()

# iteração para conseguir todas as possíveis somas de dois dados
for (i in 1:6){
  for (j in 1:6){
    poss <- rbind(poss, i+j)
  }
}

times <- 10000 # número de simulações
result <- c()

for (i in 1:times){
  r <- c()
  while (TRUE){
    # r vai receber um valor aleatório entre as possíveis somas, 
    # desde que esse seja par ou 7
    r <- c(r, sample(poss[c(which(poss==7),which(poss%%2==0))], 1, replace=T))
  
    # se houver dois sete armazena o número 1 e interrompe a iteração
    if (length(which(r==7)) == 2){
      result <- rbind(result,1)
      break
    }
    # se houver 6 pares armazena o número 0 e interrompe a iteração
    if (length(which(r%%2==0))==6){
      result <- rbind(result,0)
      break
    }
}
#  if (length(which(r%%2==0))==6 & is.sequential(which(r%%2==0))){
 #   result <- rbind(result,0)
 # }
  
}

mean(result) # resultado
# resultado analítico abaixo
(1/16)+2*1/16*(3/4)^1 +3*1/16*(3/4)^2 +4*1/16*(3/4)^3 +5*1/16*(3/4)^4 + 6*1/16*(3/4)^5
