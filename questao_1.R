#install.packages("gamlss")
library(gamlss)
library(gamlss.dist)

dados = c(2,7,4,4,3,4,4,4,10,3,5,5,7,3,4,4,6,2,4,6,
					4,3,6,8,5,3,5,8,12,6,2,4,5,3,2,5,2,6,1,5,
					6,5,3,5,4,6,2,3,11,7,5,5,6,7,0,6,4,5,7,9,
					7,8,5,4,8,8,6,7,10,3,4,4,9,3,9,2,2,2,4,3)

hist(dados, 
		 breaks = 10,
		 xlab = "Chegada de Caminhões",
		 ylab = "Frequência",
		 main = "Histograma")

ajuste = fitDist(dados, k=2, type = "realplus", trace = FALSE, try.gamlss =TRUE)
ajuste[1]