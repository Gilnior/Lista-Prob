azuis <- rep(0, 10)
verm <- rep(1, 20)
urna <- c(azuis, verm) # Vetor simulando a urna

num <- 10000000 # Número de corridas

M = matrix(0, num, 1) # Matriz de dimensão num por 1 preenchida com zeros. 

for (i in 0:num){
  amostra = sample(urna, 30) 
  vf = amostra[30]
  if (!vf){
    M[i,1] = 1 
    # Se o valor final for 0 (!vf), ele preencherá com o valor 1 a respectiva
    # posição do iterador na matriz M. 
    # Isto é, vf == 0, significa que a bola azul está na última posição, 
    # representando o que pretendíamos para a lógica do exercício.
  } 
}

Prob <- mean(M) # Calculando a probabilidade do evento acontecer através da média.
print(Prob) # 0.3333504
 
