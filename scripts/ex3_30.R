# 0 = Bola de gude branca
# 1 = Bola de gude preta

caixa1 <- c(0, 1) # 1 branca e 1 preta
caixa2 <- c(0, 1, 1) # 1 branca e 2 pretas
caixas <- c("caixa1", "caixa2")

num <- 100000 # Número de corridas
a = c()
b = c()
# A variável "a" conterá o vetor para o cálculo da 1° questão do exercício
# E a variável "b" o vetor para o cálculo da 2° questão

for (i in 1:num){
  caixa = sample(caixas, 1)
  
  # !caixa = 0 (Primeira caixa)
  if (caixa == "caixa1"){
    bola = sample(caixa1, 1)
  } else{
    bola = sample(caixa2, 1)
  }
  
  # Letra A
  if (bola){
    a = rbind(a, 1)
  } else{
    a = rbind(a, 0)
  }
  
  # Letra B
  if (!bola & caixa == "caixa1"){
    b = rbind(b, 1)
    # Se vier bola branca (!bola = 0) e for a 1° caixa, o vetor B
    # preencherá com o valor 1
  }  
  if (!bola & caixa == "caixa2") {
    b = rbind(b, 0)
    # Caso seja bola branca e caixa 2 preencherá com valor 0
  }
}


probA <- mean(a) # Probabilidade do evento A acontecer
print(probA) # Aproximadamente 0.583

probB <- mean(b) # Probabilidade do evento B acontecer
print(probB) # Aproximadamente 0.60

