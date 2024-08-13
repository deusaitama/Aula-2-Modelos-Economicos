#Grafico de correlação

dados_Boston <- MASS::Boston
?MASS::Boston

ggplot(data = dados_Boston, aes(x = rm, y = medv))+
  geom_point()+
  theme_classic() +
  xlab("Numero de quartos")+
  ylab("Valor de vendas (milhares de dolares)")+
  geom_smooth(method = "lm", se = FALSE)

# Coeficiente de correlação linear para e medv

cor(dados_Boston$rm, dados_Boston$medv)



install.packages("corrplot")
library("corrplot")

# Matriz de correlações

cor(dados_Boston)
M<-cor(dados_Boston)
corrplot(M, method = "number")
