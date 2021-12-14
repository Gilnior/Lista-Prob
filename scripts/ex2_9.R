america <- c(rep(1,24), rep(0,76))
visa <- c(rep(1,61),rep(0,39))
americaEvisa <- c(rep(1,11),rep(0,89)) 

# acima são definidas as "sacolinhas" de onde os resultados serão pegos
# todas tem 100 elementos, sendo assim, a quantidade de 1 representa a 
# porcentagem da pessoa ter aquele cartão

times <- 10000
result <- c()

for (i in 1:times){
  r1 <- sample(america, 1)
  r2 <- sample(visa, 1)
  r3 <- sample(americaEvisa, 1)
  # cada variavel acima pega um valor qualquer de cada "sacolinha"
  if (r1 == 1 | r2==1 | r3==1){
    # se ao menos um deles for igual a 1, então a pessoa tem aquele carta,
    # então marcamos esse resultado como 1
    result <- rbind(result, 1)
  }else{
    # caso contrário, marcamos como 0
    result <- rbind(result, 0)
  }
  }

mean(result) # resultado como a proporção de vezes que alguém passou na condição
# citada acima
74/100 # resultado analítico para comparação
