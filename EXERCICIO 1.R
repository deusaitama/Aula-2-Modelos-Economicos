dados_carros <- mtcars

ggplot(data = dados_carros, aes(x=hp,y=mpg))+
  geom_point(size=4)+
  theme_classic()+
  xlab("HP")+
  ylab("MPG")+
  geom_smooth(method = "lm",se=FALSE)

cor(dados_carros$hp, dados_carros$mpg)

modelo_1<-lm(formula = hp~mpg,data=dados_carros)
summary(modelo_1)

modelo_2<-lm(formula = mpg~hp,data=dados_carros)
summary(modelo_2)

plot(modelo_1)

plot(dados_carros$hp,rstandard(modelo_2),xlab="mpg",ylab="hp")
abline(0,0)

novo_dado<-data.frame(hp=200)
predict(modelo_2,novo_dado)

