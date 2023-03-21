#Amostras emparelhadas
#Exemplo 1
library(DAAG)
attach(mignonette)
str(mignonette)
#cross: alturas das plantas cultivadas por cruzamento
#self: alturas das plantas cultivadas por autofecunda¸c~ao
t.test(x=cross,y=self,alternative="two.sided",
              mu=0,paired=TRUE,conf.level=0.95,data=mignonette)

#Exemplo 2
#variâncias iguais
library(HSAUR)
attach(schizophrenia)
# age: idade no momento do diagn´ostico.
# gender: um fator com dois n´ıveis: female e male
str(schizophrenia)
t.test(age ~ gender,alternative="greater", # "two.sided", "less" ou "greater"
            mu=0,paired=FALSE,conf.level=0.99,data=schizophrenia)
