poss <- 1:6

times <- 10000

result <- c()

has.nequals<-function(x, n){
  for (j in unique(x)){
    if (length(x[which(x==j)])==n){
      return(TRUE)
    }
  }
  return(FALSE)
}

has.xtimes<- function(x, n, t){
  for (i in length(x)){
    p <- 0
    if (has.nequals(x[-i], n)){
      p <- p + 1      
    }
  }
  if (p==t){
    return(TRUE)
  }else{
    return(FALSE)
  }
}


for (i in 1:times){
  r <- sample(poss,5, replace=T)
  
  if (length(r) == length(unique(r))){
    result <- rbind(result, 'nenhum_igual')
  }else if (has.xtimes(r, 2, 1)){
    result <- rbind(result, '1pares')
  }else if (has.xtimes(r, 2, 2)){
    result <- rbind(result, '2pares')
  }else if (has.nequals(r, 3)){
    result <- rbind(result, 'trinca')
  }else if (has.xtimes(r, 2, 1) & has.nequals(r, 3)){
    result <- rbind(result, '1par1trinca')
  }else if (has.nequals(r, 4)){
    result <- rbind(result, '4guais')
  }else if (has.nequals(r, 5)){
    result <- rbind(result, '5guais')
  }else{
    result <- rbind(result, 'resto')
  }
}

for (m in sort(unique(result))){
  print(m)
  print(length(result[which(result==m)])/length(result))
}

