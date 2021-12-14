library(expm)

l1 <- c(1/4, 1/8, 1/8, 1/16, 1/4, 1/8, 1/16)
l2 <- c(0, 1/4, 0, 1/8, 1/2, 0, 18)
l3 <- c(0, 0, 1/4, 1/8, 1/4, 1/4, 1/8)
l4 <- c(0, 0, 0, 1/4, 1/2, 0, 1/4)
l5 <- c(1/4, 1/8, 1/8, 1/16, 1/4, 1/8, 1/16)
l6 <- c(1/4, 1/8, 1/8, 1/16, 1/4, 1/8, 1/16)
l7 <- c(1/4, 1/8, 1/8, 1/16, 1/4, 1/8, 1/16)

markov <- rbind(l1, l2, l3, l4, l5, l6, l7)

M <- markov %^% 10 # Elevar o vetor markov a um número alto, padronizando de modo forçado os valores das linhas.

# Para o cálculo da probabilidade, basta dividir a matriz elevada a um número grande,
# na coluna onde o A vence pelo somatório das que o B vence. 
# No caso, trata-se das colunas 5 / (5+6+7)

P <- M[1,5] / (M[1,5]+M[1,6]+M[1,7]) # Aproximadamente 0.5926



