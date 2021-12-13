result <- c()

poss <- c('A','A','A','A','b','B','b','B','C','C','C','c')# todo resultado possível
# A e a se referem a moeda de duas caras
# B e b se referem a moeda honesta
# C e c se referem a moeda viciada

# Maíusculo é cara e minúsculo é coroa

times <- 10000

for (i in 1:times){
  r <- sample(poss,1)
  
  if (r %in% c('A','B','C')){ # verifica se deu cara
    if (r=='A'){ # 1 se tiver sido a moeda de duas caras
      result <- rbind(result,1)
    }else{ # 0 para outras moedas
      result <- rbind(result,0)
    }
  }
}

print(mean(result)) # resultado
4/9 # resultado analítico

