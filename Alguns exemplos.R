#Pacotes

# install.packages("ggplot2")
library(ggplot2)

#Diagrama de dispersão
ggplot(data = distancia, aes(x=idade,y=distancia))+
  geom_point(size=4)+
  theme_classic()+
  xlab("Idade")+
  ylab("Distancia")+
  geom_smooth(method = "lm",se=FALSE)

# Coeficiente de correlação linear
cor(distancia$idade, distancia$distancia)


#Analise de regressão (Regressão linear simples)
# 1)Diagrama de dispersão
# 2)COeficiente de correlação
# 3)Ajuste da reta(Encontrar alfa e beta)
# 4) Verificar a qualidade do modelo

#Ajuste do modelo de regressão
modelo_1<-lm(formula = distancia~idade,data=distancia)

#Mostra resultado do modelo
summary(modelo_1)

# Intervalo de confiança para os parametros
confint(modelo_1)

# Predição para um novo valor
novo_dado<-data.frame(idade=24)
predict(modelo_1,novo_dado)

# Analise de residuos
plot(modelo_1)

# homocedasticidade dos residuos
plot(distancia$idade,rstandard(modelo_1),xlab="Idade",ylab="Residuos")
abline(0,0)






