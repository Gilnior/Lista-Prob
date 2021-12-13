result <- c()

a <- c(rep(1,2), rep(0,4))
b <- c(rep(1,8), rep(0,4))
c <- c(rep(1,1), rep(0,4))

times <- 100000

for (i in 1:times){
  r1 <- sample(a,1)
  r2 <- sample(b,1)
  r3 <- sample(c,1)
  if (sum(r1,r2,r3) == 2 ){
    if (r1==1){
      result <- rbind(result, 1)
    }else{
      result <- rbind(result, 0)
    }
  }
}

print(mean(result))
