result <- c()

poss <- c('A','A','A','A','b','B','b','B','C','C','C','c')

times <- 10000

for (i in 1:times){
  r <- sample(poss,1)
  
  if (r %in% c('A','B','C')){
    if (r=='A'){
      result <- rbind(result,1)
    }else{
      result <- rbind(result,0)
    }
  }
}

mean(result)

