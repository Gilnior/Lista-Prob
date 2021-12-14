# a

a <- c(1,0,0) # representa 1/3 de chance de fechamento do relé
result <- c()
times <- 1000000

for (i in 1:times){
  r <- sample(a, 5, T) # define um estado para os 5 relés
  if (r[5]==1 && (sum(r[1:2])==2 | sum(r[3:4])==2)){
    # se fechar o relé 5 e, ou 1 e 2 estiverem fechados, ou 3 e 4 estiverem fechados
    # adiciona
    result <- rbind(result,1)
  }else{
    # caso contrário, adiciona 0
    result <- rbind(result,0)
  }
}

print(mean(result)) # resultado
53/729 # resultado analítico

# b 
# mesma ideia da a, mas com as condições da questão b

a <- c(1,0,0)
result <- c()
times <- 10000

for (i in 1:times){
  r <- sample(a, 5, T)
  if (sum(r[1:2])==2 | sum(r[3:4])==2 | sum(r[c(1,5,4)])==3 | sum(r[c(3,5,2)])==3){
    result <- rbind(result,1)
  }else{
    result <- rbind(result,0)
  }
}

mean(result) # resultado
25/(81*3)+34/243 # resultado anlítico