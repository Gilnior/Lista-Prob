# a

a <- c(1,0,0)
result <- c()
times <- 100000

for (i in 1:times){
  r <- sample(a, 5, T)
  if (r[5]==1 && (sum(r[1:2])==2 | sum(r[3:4])==2)){
    result <- rbind(result,1)
  }else{
    result <- rbind(result,0)
  }
}

mean(result)
53/729

# b 
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

mean(result)
25/(81*3)+34/243