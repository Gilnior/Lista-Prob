poss <- c()

for (i in 1:6){
  for (j in 1:6){
    poss <- rbind(poss, i+j)
  }
}

is.sequential <- function(x){
  all(abs(diff(x)) == 1)
} 

times <- 100000

result <- c()

for (i in 1:times){
  r <- sample(poss, 8, replace=T)
  if (length(which(r==7)) == 2 & !(length(which(r%%2==0))==6 & is.sequential(which(r%%2==0))) ){
    result <- rbind(result,1)
  }else{
    result <- rbind(result,0)
  }
}

mean(result)

(1/16)+2*1/16*(3/4)^1 +3*1/16*(3/4)^2 +4*1/16*(3/4)^3 +5*1/16*(3/4)^4 + 6*1/16*(3/4)^5
