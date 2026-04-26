#Basic R

##Installing packages
#Click and install

#Install function
install.packages('dplyr')
library('dplyr')

#Bioconductor function
install.packages("BiocManager")
library("BiocManager")
BiocManager::install("ggplot2",force=TRUE)
library(ggplot2)





#Help
library(tidyverse)

?tidyverse
??ggplot2
help(ggplot2)

??ggplot
??geom_boxplot




#Cleaning environment and console
thi<-5
jana<-3
caio<-4

rm(thi)
ls()

rm(list=ls())
#ctlr + L





#Basic commands
#Basic commands
#Basic commands

#fuction use
example(sum)
example(print)

thi<-4
print(thi)
thi

#sum clicar cntl + enter
2+3

#subtraction
2-3

#multiplication
2*3  

#division
2/3

#exp
2^2

#assign
a<-2+3
b=2+3
print(a)
a

aluno<-"Thiago"

soma_de_numeros<-sum(a,b,6,80,50,80,a,a,a,a,a,a,a,a,a,a)^5

270^5

2-3->b
print(b)
b

#assigning overlaps previous data

a<-4

a<-6

#creating data.frames
M <- data.frame(a,b)
print(M)
M





##Objects
##Objects
##Objects

##Where data is stored in RAM memory

##Vectors
#A vector is a variable in the commonly admitted meaning
#Instead of creating a variable for each observation, we generate a 
#sequence of data that has the same type

numbers<-c(1,2,3)
students<-c(1,2,3,5,7,3,5,7,8,10.5)

numbers_2<-1:4

sequencia_de_numeros<-seq(from=2,to=48764234,by=2875623)

??seq

rep(1:900,times=2)

Vet<-rep(1:10,each=4)

#functions in vectors
sort(sequencia_de_numeros)
rev(sequencia_de_numeros)
table(sequencia_de_numeros)
unique(sequencia_de_numeros)

sequencia_de_numeros[5]
sequencia_de_numeros[-3]
sequencia_de_numeros[1:3]
sequencia_de_numeros[-(2:6)]
sequencia_de_numeros[sequencia_de_numeros==25880609]
sequencia_de_numeros[sequencia_de_numeros>31631855]
sequencia_de_numeros[sequencia_de_numeros %in% c(2,31631855)]

#Logical
#Boolean values
logical<-c(TRUE, FALSE)

#Numeric
group<-c(1,2,3,4,5,6)

#Character
group1<-c('1','2')
group2<-c('Thiago','Vidotto')


#Factor
group_factor<-factor(c('Thiago','Vidotto',"Felipe"),levels=c('Felipe','Thiago',"Vidotto"))






##Basic functions
##Basic functions
##Basic functions


a<-2+3
test<-"3"

group<-c(1,2,3,4,5,6)
mode(group)
class(group)

group*2

group_2<-c(1,2,"3",4,5,6)
mode(group_2)
class(group_2)

group_2*2

group_3<-c("1","2","3","4","5","6")
mode(group_3)

group_4<-c("a","b","c","d","e")
mode(group_4)


group_3_numeric<-as.numeric(as.character(group_3))
class(group_3_numeric)
class(group_3)

group_2_factor<-factor(group_2)

group_1_character<-as.character(group)


group_4_numeric<-as.numeric(as.character(group_4))
class(group_4_numeric)
class(group_4)

##Objects with characters
group<-c("Treat1","Treat2","Treat1","Treat2","Treat2")
group<-c("Treat1","Treat2","Treat1","Treat2",FALSE)
group<-c(FALSE,TRUE,FALSE,FALSE)

mode(group)
class(group)

group_numeric<-as.numeric(as.character(group)) #NAs introduced by coercion
class(group_numeric)

group_factor<-factor(group,levels=c("Treat2","Treat1"))

#length mostra o tamanho a dimensao 
length(group_factor)
dim(group_factor) #no dimensions for vectors
#dimensao vamos usar para data frame
#dim pega linha e coluna 

#length mostra o tamanho a dimensao 
c<-"Variable_1"
mode(c)
length(c)


d<-TRUE
e<-FALSE
f<-NULL #apaga
mode(f)
length(f)




#Mathematical functions (modulo: programacao em r aula 8)

#log - logaritimo 
log(2) # tirando o logaritimo de 2 
vec<-c(3,4,5,5,5,6,7,19) # criando um vetor e tirando o logaritmo
log(vec) # logaritmo do vetor vec 
#log(vec,4) -- mudando a base para tirar o logaritmo



#exp --- colocando expoente 
exp(2)
exp(vec) #colocando meu vetor vec e tirando o exponecial

#round --- arredondando resultados
round(4.345645645,1) # arredondar pra uma casa após a virgula
# round(4.345645645,2) # arredondar pra duas casas após a virgula

#mean --- média 
mean(c(3,4,5,5,5,6,7,50)) # -- media de um conjunto
mean(c(3,4,5,6,6,7,8,8))
mean(vec)

#median -- mediana 
median(c(3,4,5,5,5,6,7,19))
median(c(3,1,930,5,40,6,7,3,8,500))
median(vec)

#quantile -- tirar o quantil de um vetor 
quantile(c(3,4,5,6,6,7,8,8))
quantile(vec)

#variance --- encontrar a varianca 
var(c(3,4,5,6,6,7,8,8))

#standard deviation  --- desvio padráo
sd(c(3,4,5,6,6,7,8,8))





#Data frames (objeto que é composto por )
# abir tabelas no R 
#A data frame is a table composed with one or several vectors and/or 
#factors all of the same length but possibly of different modes.


#open table
getwd() #descobrir o diretorio atual
rm(list=ls())

#funcao para abrir uma tabela de um arquivo
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt") #escrever o caminho para o arquivo onde está a tabela os V que aparecem na tabela sao as variaveis
file.exists("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt") # verificar se o arquivo exite no diretório informado
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header=TRUE) # coloca o cabecalho da tabela
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header=TRUE,sep="\t") # acerta dos espacos da tabela, separa as colunas com tab
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header=TRUE,sep=",") # separa por virgula 
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header=TRUE,sep=";") #separa por ponto e virgula - util para arquivos excell

readLines("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt", n = 5) # verificar que tipo de espacos e separacoes tem na tabela
read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header= TRUE,sep ="") # tabela separado por espaco de quaquer tamanho a tabela do curso é assim
df<-read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header= TRUE,sep ="") #colocando a tabela dentro de df 


## funcoes para investigar uma tabela ##

dim(df) #dimensao da tabela --- linhas x colunas 
names(df) # retorna os nomes das verificar as variaveis 
colnames(df) #retorna nomes das colunas x se situar na planilha
class(df) # mostra o tipo de objeto - neste caso data frame -- obj com duas dimensoes 

## explorar a planilha de forma visual ##

#df[80:90,1:5] # colchotes para informar o r que quero ver as dimensoes do data frame -- [linhax:linhax , colunax: colunax]linhas , colunas (linha 80 a 90, coluna 1 a 5 )
df[1:5,1:5] # so nao se pode colocar linhas e colunas que nao existe o tamannho precisa ser dentro do real
head(df)# mostra o cabecalho das colunas (de cima pra baixo seis)
tail(df) #mostra os ultimos dados pra cima 
# *cuidado* : se a planilha possui numeros grandiosos de linhas ou colunas é melhor dimensionar para náo travar o pc 

df2<-df[1:5,1:5] # pego uma parte de um data frame (objeto) e coloco em outro objeto
df2

### observacao##
# parentesis se usa para funcao e colchete para dimensao
df[,1:6] # se nao dimensionar as linhas ele envia todas as linhas 
df[,1:5]
df[1:5,] # ver todas as colunas da linha 1 ao 5 de cada coluna
df[c(1,8:10),c(1,3,5)] # abrir colchote(ver coisas do objeto), abrir conjunto(primeira linha e linhas do 8 ao 10)segundo conjunto colunas
df$Weight # com o sinal $ se pode pedir para retornar todos os valores de um id, pelo nome da coluna
df$Sex

class(df$Tobacco) # buscar a classe dos dados da planilha pelo id(coluna) (classe: character, integer)
class(df$Weight)
class(df$Weight)<-"numeric" # (mudar o tipo de classe do dado 'pesquisar este náo funcionou')

df$Tobacco<-factor(df$Tobacco) #busca o tipo de dado factor?
df$Tobacco<-factor(df$Tobacco,levels=c("Yes","No")) #mudar a ordem, dos fatores


tobacco_yes<-subset(df, Tobacco %in% c("Yes")) #funcao para ver os dados só de quem fuma, uma forma de isolar dados pra um grupo
#subset pegar um pedaco 
dim(tobacco_yes) # ver o tamanho da coluna de dados dos fumantes - quantas pessoas fumam 
mean(df$Weight)#média de todos na planilha 

tall_yes<-subset(df, Height >1.8) #to buscando pessoas acima de 1.8 
mean(tall_yes$Weight) # média de peso das pessoas altas 

tall_yes_tobacco_yes<-subset(df, Height >1.8 & Tobacco %in% c("Yes")) # %in% 
dim(tall_yes_tobacco_yes)

#primeira parte é o objeto que estou criando posso colocar um nome que fique claro
tall_no_tobacco_yes<-subset(df, Height <1.8 & Tobacco %in% c("Yes"))
dim(tall_no_tobacco_yes) #dimensao destes dados no objeto

df$ID
df$Race
df$BMI
df$Sex

table(df$Race) # contar quanto de cada variavel branco e preto 
table(df$Race,df$Sex)# conto a quantidade para cada variavel 



##transposing
#transpor 

df_t<-t(df) # transpoem linha pra coluna 
# t(df) ✔️ funciona
#❌ quebra com dados mistos (texto + número)
#✔️ use só colunas numéricas ou as.matrix()
dim(df)
dim(df_t)

class(df_t)

#converting to data frame

df_t<-data.frame(t(df))
class(df_t)

----

#Modulo Programacao em R --- 4 testes estatisticos em R
#descriptive statistics 

df<-read.table("/Users/home/Desktop/fabiola/bioInfor/Scripts R/Sheet_STATLAB.txt",header=TRUE,sep=" ")
head(df)# vendo de novo coisas do data frame 
tail(df)
df[1:5,1:5]

#descriptive statistics # estatistica descritiva  aula 1 

median(df$Height) #mediana das alturas na tabela
mean(df$Height) # media 
range(df$Height) #minimo e maximo 
median(df$Tobacco)

#funcao table para contar quanto em cada coluna
table(df$Race)
table(df$Tobacco)
table(df$Race,df$Tobacco)
table(df$Race,df$Age) # obs - usar variavel qualitativa e quantitativa náo é muito util 

#median by group
#funcao aggregate 
colnames(df)
aggregate(df$Height, list(df$Tobacco), median,na.rm=TRUE) # na.rm=true -- vai remover/ignorar quando náo tiver valor
# funcao está agregando duas variaveis e pode retirar a media (mesmo sendo uma qualitativa e uma quantitativa)
aggregate(df$Height, list(df$Tobacco), mean,na.rm=TRUE) #media 

aggregate(df$Height, list(df$Tobacco), range,na.rm=TRUE) #minimo e maximo

aggregate(df$Height, list(df$Tobacco), quantile,na.rm=TRUE) # quantil

aggregate(df$Height, list(df$Sex), median,na.rm=TRUE) # mediana

aggregate(df$Height, list(df$Race), mean,na.rm=TRUE)# media 

----

#structure
str(df) # estrutura da tabela 

install.packages("arsenal") # instalar o pacote arsenal para criar tabelas 
library(arsenal) # chamar o pacote

colnames(df) # criando objeto com o data frame
df_organized <- tableby(Race ~ Sex + Height + IQ,data=df) # os dados pego de DF objeto onde estáo os dados
#cada uma das categorias vao virar linhas
df_organized <- tableby(Financial_status ~ Sex + Height + IQ + BMI + Weight + Circumference, data=df)
#fiancial_status neste caso é uma variavel independente afetando as outras variaveis
# usa a funcao tablery do pacote arsenal para concatenar dados e criar a tabela
summary(df_organized) # para ver a tabela preciso rodar a funcao sumary em cima do objeto 
summary(df_organized,text=TRUE) # organizar visualmente melhor 

#observacao#
# A função `summary()` do pacote arsenal (geralmente usada após `tableby()`) serve para gerar um **resumo descritivo organizado dos dados**, especialmente comparando grupos.

# ela mostra:
  
# * médias, medianas, desvio padrão (variáveis numéricas)
# * contagens e porcentagens (variáveis categóricas, como `race`)
# * testes estatísticos (p-valor) para comparar grupos

#💡 Ou seja: é uma forma rápida de criar uma **tabela tipo “Tabela 1” de artigo científico**, resumindo e comparando variáveis entre grupos de forma automática.
----


### aula 2 - Qui quadrado no R ###
# testes estatisticos com R #

#Chi-square
table(df$Race,df$Sex) # criando tabela 2x2 

chisq.test(table(df$Race,df$Sex)) #funcao chisq.test - organiza em qui quadrado
# vai ser analise da distribuicao de raca e genero considerando que nao ha uma diferenca na distribuicao
# qui quadrado nao é bom pra essa relacao por ter menos de 5 na celula homem x branco = 3 
chisq.test(table(df$Tobacco,df$Sex))
# neste exemplo da certo e aponta uma diferenca na distribuicao
colnames(df) # ver os nomes das colunas 
chisq.test(table(df$Tobacco,df$BMI)) # nao da certo


------



#Fisher
# aula 3 modulo testes estatisticos em R 
# teste fisher preciso ter 
fisher.test(table(df$Race,df$Sex)) # nao da pq tem mais de 5 observacoes em 1 celula
fisher.test(table(df$Race,df$Tobacco))

----

#aula de teste estatistico modulo estatistica basica - testes estatisticos

#Shapiro test
#A significant results indicates that the distribution is NOT normal
#P<0.05 = non-normal distribution

str(df)
shapiro.test(df$Height)
shapiro.test(df$Weight)
shapiro.test(df$Sex)
is.numeric(df$Sex)

shapiro.test(df$IQ) #normal distribution
shapiro.test(df$Circumference) #normal distribution


hist(df$Height)
hist(df$Weight)
hist(df$Circumference)
hist(df$IQ)


install.packages("ggpubr")
library("ggpubr")
ggdensity(df$IQ)

ggdensity(df$Weight)

ggdensity(df$Height)

ggdensity(df$Circumference)


















#T-test

#independent t-test
#independent t-test
#independent t-test

#normality test
shapiro.test(df$Height) #P<0.05 = not normally distributed
shapiro.test(df$IQ)

t.test(df$IQ~df$Sex)
t.test(df$Height~df$Sex)

#summary
install.packages("dplyr")
library("dplyr")

group_by(df, Race) %>%
  reframe(
    count = n(),
    mean = mean(IQ, na.rm = TRUE),
    median = median(IQ, na.rm=TRUE),
    sd = sd(IQ, na.rm = TRUE),
    range = range(IQ, na.rm=TRUE)
  )

#simple boxplot
library(ggplot2)
ggplot(df, aes(Sex, IQ))+
  geom_boxplot(aes(fill=Sex))

ggplot(df, aes(Sex, IQ))+
  geom_violin(aes(fill=Sex))











#dependent t-test
#dependent t-test
#dependent t-test

#normality test
shapiro.test(df$IQ) #P<0.05 = not normally distributed

t.test(df$IQ~df$Treatment,paired=TRUE) #dependent ~ independent

#summary
library("dplyr")
group_by(df, Treatment) %>%
  summarise(
    count = n(),
    mean = mean(IQ, na.rm = TRUE),
    sd = sd(IQ, na.rm = TRUE)
  )

#simple boxplot
library(ggplot2)
ggplot(data=df, aes(Treatment, IQ))+
  geom_boxplot(aes(fill=Treatment))



















#Wilcołxon Signed Rank - Paired data
shapiro.test(df$Height) #P<0.05 = not normally distributed

wilcox.test(df$Height~df$Treatment,paired=TRUE) #not normal data

#https://stats.stackexchange.com/questions/597782/
#why-does-r-say-cannot-compute-exact-p-values-with-ties-when-i-can-do-it-with-p

#plots
library(ggplot2)

df$Treatment<-factor(df$Treatment,levels=c("Before","After"))

ggplot(data=df, aes(Treatment, Height))+
  geom_boxplot(aes(fill=Treatment))

##table
library("dplyr")
group_by(df, Treatment) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )













#Mann-Whitney - Wilcoxon Rank Sum - Unpaired data
wilcox.test(df$Height~df$Race) #not normal data

#plots
library(ggplot2)
ggplot(data=df, aes(Race, Height))+
  geom_boxplot(aes(fill=Race))

##table
library("dplyr")
group_by(df, Race) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )

















#Kruskal
#3 or more groups with not normal data
table(df$Financial_status)

kruskal.test(df$Height~df$Financial_status)
aggregate(df$Height, list(df$Financial_status), median,na.rm=TRUE) 

#poshoc Dunn
install.packages("FSA")
library(FSA)
df$Financial_status<-factor(df$Financial_status)
dunnTest(Height ~ Financial_status,data=df,method="bh") 

#plots
library(ggplot2)
ggplot(data=df, aes(Financial_status, Height))+
  geom_boxplot(aes(fill=Financial_status))

##table
library("dplyr")
group_by(df, Financial_status) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )



















#ANOVA

##One-way ANOVA
##One variable with 3 or more groups with a normally distributed dependent variable
anova_model<-aov(df$IQ~df$Financial_status)
summary(anova_model)

#Tukey post hoc
#Shows CIs and mean difference between groups
TukeyHSD(anova_model)

#plots
library(ggplot2)
ggplot(data=df, aes(Financial_status, IQ))+
  geom_violin(aes(fill=Financial_status))

#combining Kruskal Wallis and ANOVA
df_organized <- tableby(Financial_status ~ anova(IQ) + kwt(Height), data=df)
tests(df_organized)


df_organized <- tableby(Sex ~ anova(IQ) + wt(Height), data=df)
tests(df_organized)

args(tableby.control)
??tableby






##Two Way ANOVA
anova_model<-aov(df$IQ~df$Financial_status+df$Race)

anova_model<-aov(df$IQ~df$Financial_status+df$Tobacco)

summary(anova_model)

#Tukey post hoc
#Shows CIs and mean difference between groups
TukeyHSD(anova_model)

#plots
library(ggplot2)
table(df$Financial_status,df$Race)

ggplot(data=df, aes(Financial_status, IQ))+
  geom_boxplot(aes(fill=Race))

ggplot(data=df, aes(Race, IQ))+
  geom_boxplot(aes(fill=Financial_status))

ggplot(data=df, aes(Tobacco, IQ))+
  geom_boxplot(aes(fill=Financial_status))





















##Correlation
shapiro.test(df$Height)
shapiro.test(df$IQ)

##Pearson
cor(df$Circumference, df$IQ, method = c("pearson"))
cor.test(df$Circumference, df$IQ, method = c("pearson"))


#scatterplot
library(ggplot2)
ggplot(data=df, aes(Circumference, IQ))+
  geom_point()

#ggpubr
install.packages("ggpubr")
library("ggpubr")
ggscatter(df, x = "Circumference", y = "IQ", 
          add = "reg.line", 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Circumference", ylab = "IQ")


##Spearman
cor(df$BMI, df$Height, method = c("spearman"))
cor.test(df$BMI, df$Height, method = c("spearman"))

#plot
ggscatter(df, x = "BMI", y = "Height", 
          add = "reg.line", 
          cor.coef = TRUE, cor.method = "spearman",
          xlab = "BMI", ylab = "Height")






















###Plotting
###Plotting
###Plotting
###Plotting
###Plotting
df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB_Treatment.txt",header=TRUE,sep=" ")
df[1:5,1:5]

##Histogram
library(ggplot2)
library(ggpubr)

ggplot(df, aes(x=IQ)) + 
  geom_histogram(binwidth=10, color="black", fill="gray")


ggplot(df, aes(x=IQ)) + 
  geom_histogram(binwidth=10, color="black", fill="gray")+
geom_vline(aes(xintercept=mean(IQ)),
           color="blue", linetype="dashed", size=1)+
  geom_vline(aes(xintercept=median(IQ)),
             color="red", linetype="dashed", size=1)

ggplot(df, aes(x=Height)) + 
  geom_histogram(binwidth=0.05, color="black", fill="gray")+
  geom_vline(aes(xintercept=mean(Height)),
             color="blue", linetype="dashed", size=1)+
  geom_vline(aes(xintercept=median(Height)),
             color="red", linetype="dashed", size=1)

#by group
#search for colors in R

my_colors<-c("pink3","green2")

ggplot(df, aes(x=IQ,color=Tobacco)) + 
  geom_histogram(binwidth=10, fill="white",alpha=0.2,position="dodge")+
  scale_color_manual(values=my_colors)















#graphics and legends
my_colors<-c("orange3","purple3")


ggplot(df, aes(x=IQ,color=Sex)) + 
  geom_histogram(binwidth=10, fill="white",alpha=0.5,position="dodge")+
  scale_color_manual(values=my_colors)+
  theme(legend.title = element_text(size=14),
  axis.text=element_text(size=16,color="black"),
  axis.title=element_text(size=18,face="bold"),
  axis.text.x = element_text(angle = 0, hjust = 0),
  legend.text = element_text(size=12,color="black"))+
  scale_x_continuous(name = "IQ levels")+scale_y_continuous(name = "Frequency")

















##Boxplot
#Mean difference and rank difference
df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB_Treatment.txt",header=TRUE,sep=" ")
df[1:5,1:5]

##ggplot
library(ggplot2)
library(ggpubr)
library(ggsignif)

#change method accordingly (t.test, wilcox.test)
#change paired argument (FALSE, TRUE) depending on paired t test or wilcoxon


#unpaired t test
table(df$Race)
shapiro.test(df$IQ)

ggplot(df, aes(Race, IQ))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(axis.text=element_text(size=15),
       axis.title=element_text(size=15,face="bold"),
       axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Race),outlier.size=0.4)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Race), method="t.test",label = "p.signif",
                     hide.ns = FALSE,paired=FALSE,label.x = 1.43)

#paired t test
ggplot(df, aes(Treatment, IQ))+ggtitle("") +
  scale_fill_manual(values=c("gold3","darkgreen"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Treatment),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Treatment), method="t.test",label = "p.signif",
                     hide.ns = FALSE,paired=TRUE,label.x = 1.43)


#unpaired wilcoxon (mann whitney)
ggplot(df, aes(Race, Height))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Race),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Race), method="wilcox.test",label = "p.signif",
                     hide.ns = FALSE,paired=FALSE,label.x = 1.43)

#paired wilcoxon
ggplot(df, aes(Treatment, Height))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Treatment),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Treatment), method="wilcox.test",label = "p.format",
                     hide.ns = FALSE,paired=TRUE,label.x = 1.30)



#ANOVA
ggplot(df, aes(Financial_status, IQ))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.5)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "IQ levels")+
  stat_compare_means(aes(group = Financial_status), method="anova",label = "p.format",
                     hide.ns = FALSE,label.x = 1.9)

#Kruskal Wallis
ggplot(df, aes(Financial_status, Height))+ggtitle("Financial Status") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "Height (m)")+
  stat_compare_means(aes(group = Financial_status), method="kruskal.test",
                     label = "p.signif",hide.ns = FALSE,label.x = 1.9)


















##ggboxplot
install.packages("devtools")
devtools::install_github("kassambara/rstatix", dependencies = FALSE)
devtools::install_github("kassambara/ggpubr", dependencies = FALSE)

library(rstatix)
library(ggpubr)

#wilcox for non normal variable
stats <- df %>%
  group_by(Sex) %>%
  wilcox_test(Height ~ Race,paired=FALSE) %>%
  add_significance()

boxplot<-ggboxplot(df, x = "Race", y = "Height", fill = "Sex",palette = "PuRd")

stats <- stats %>% add_xy_position(x = "Sex")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$Height+0.1))






#t test for normal variable
stats <- df %>%
  t_test(IQ ~ Race,paired=FALSE) %>%
  add_significance()

boxplot<-ggboxplot(df, x = "Race", y = "IQ", fill = "Race",palette = "rickandmorty",add="jitter")

stats <- stats %>% add_xy_position(x = "Race")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$IQ-3))








#paired t test for normal variable
stats <- df %>%
  t_test(IQ ~ Treatment,paired=TRUE) %>%
  add_significance()

boxplot<-ggpaired(df, x = "Treatment", fill = "Treatment", palette = "RdBu",
                  y = "IQ",add="jitter",line.color = "black",
                  line.size = 0.1,ggtheme=theme_gray())

stats <- stats %>% add_xy_position(x = "Treatment")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$IQ+13))













##Barplot
#Proportions
colnames(df)

table(df$Financial_status)

ggplot(df, aes(x=Financial_status)) + 
  geom_bar(stat="count")

ggplot(df, aes(x=Financial_status)) + 
  geom_bar(aes(y=after_stat(prop), group = 1),stat="count")






ggplot(df, aes(Financial_status))+ 
  geom_bar(aes(fill = Race)) +scale_x_discrete(name = "")+
  scale_y_continuous(name = "Financial Status")+
  theme_pubclean()+theme(axis.text.x = element_text(angle = 0, hjust = 0.5),
                         legend.title = element_blank(),
                         axis.text=element_text(size=13),
                         legend.text=element_text(size=13))




colnames(df)
ggplot(df, aes(Race))+ 
  geom_bar(aes(fill = Financial_status),position="fill") +scale_x_discrete(name = "")+
  scale_y_continuous(name = "Financial Status")+
  theme_pubclean()+theme(axis.text.x = element_text(angle = 0, hjust = 0.5),
                         #legend.title = element_blank(),
                         axis.text=element_text(size=13),
                         legend.text=element_text(size=13))


##Add error bar
library(dplyr)
df.summary <- df %>%
  group_by(Financial_status) %>%
  summarise(
    sd = sd(IQ, na.rm = TRUE),
    IQ = mean(IQ))

??group_by

#only error bars (from sd)
ggplot(df.summary, 
  aes(x = Financial_status, y = IQ, ymin = IQ-sd, ymax = IQ+sd))+ 
  geom_errorbar(width = 0.2) +
  geom_point(size = 1.5)

#barplot showing mean IQ + error bar
ggplot(df.summary, aes(x=Financial_status, y=IQ, fill=Financial_status)) + 
  geom_bar(stat="identity", color="black", 
           position=position_dodge()) +
  geom_errorbar(aes(ymin=IQ-sd, ymax=IQ+sd), width=.2,
                position=position_dodge(.9)) 












##Scatterplot
#Correlations and distributions
library(ggplot2)
library(ggpubr)

ggplot(df, aes(x=IQ, y=Circumference)) + 
  geom_point()+geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="pearson")

#add linear model curve and change point format
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(size=3, shape=20)+
  geom_smooth(method=lm, se=TRUE)+
  stat_cor(method="spearman")

#color and shape by group
ggplot(df, aes(x=BMI, y=Height,shape=Sex, color=Financial_status)) + 
  geom_point(size=3)

#size by continuous variable
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(aes(size=IQ))+
  geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="spearman")

#color by continuous variable
ggplot(df, aes(x=BMI, y=Height, color=Circumference)) + 
  geom_point(size=4)+
  geom_smooth(method=lm, se=FALSE,color="black")+
  stat_cor(method="spearman")

#size and color by continuous variable
ggplot(df, aes(x=BMI, y=Height, shape=Sex)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="spearman")

#area plot
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(aes(size=Circumference))+
  geom_density_2d()
















##Corrplot
install.packages("corrplot")
library(corrplot)
colnames(df)

df[,c(6:8,10,11)] <- lapply(df[,c(6:8,10,11)], function(x) as.numeric(as.character(x)))

matrix<-as.matrix(df[,c(6:8,10,11)])
class(matrix)

res <- cor.mtest(matrix, conf.level = .95)
M <- cor(na.omit(matrix),method="spearman")
par(ps=10)
corrplot(M,type="lower", method = "square",bg="white",
         tl.col = "black",p.mat = res$p, 
         insig = "p-value", sig.level = 0.01)

??corrplot















##Line plot
#Before and after
library(dplyr)
means <- df %>%
  group_by(Financial_status) %>%
  summarise(
    sd = sd(IQ, na.rm = TRUE),
    IQ = mean(IQ))

ggplot(means, aes(Financial_status, IQ, group=1)) +
  geom_line(linetype = "dashed")+
  geom_point()


#Time 
head(economics)
??economics
#uempmed - median duration of unemployment, in weeks
#unemploy - number of unemployed in thousands
#psavert - personal savings rate

ggplot(data=economics, aes(x = date, y = uempmed))+
  geom_line(aes(y = uempmed),color="red")

subset_2006<-subset(economics, date > as.Date("2006-1-1"))
ggplot(data=subset_2006, aes(x = date, y = uempmed))+
  geom_line()

subset_2009<-subset(economics, date > as.Date("2009-1-1"))
ggplot(data=subset_2009, aes(x = date, y = uempmed))+
  geom_line()

ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = psavert), color = "pink3") +
  scale_y_continuous("Personal Savings")

ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = uempmed), color="steelblue3")+
  scale_y_continuous("Unemployment")












#Area plot
data("diamonds")
ggplot(diamonds, aes(price, fill=cut))+geom_bar(stat = "bin",binwidth=300)+
  scale_fill_brewer(palette="Set3") 


??scale_fill_brewer
??diamonds










##Saving figures
#add name, location and dimensions
#saves on working directory -- getwd()

getwd()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/1.png",res=1200,pointsize=10)

ggplot(df,aes(Sex,IQ))+
  geom_boxplot()+theme(axis.title.x = element_text(size=25),
                       axis.title.y = element_text(size=25))
dev.off()
















.
















##table
library(arsenal)
stats  <- tableby.control(test=FALSE, total=FALSE,
                          numeric.stats=c("N", "median", "q1q3"),
                          stats.labels=list(N='Count', median='Median', q1q3='Q1,Q3'))

df_organized <- tableby(Financial_status ~ Height + Weight, data=df,control=stats)
summary(df_organized,text=TRUE)





png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/1.png",res=300,pointsize=10)
ggplot(data=economics, aes(x = date, y = uempmed))+
  geom_line(aes(y = uempmed),color="red")
dev.off()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/2.png",res=300,pointsize=10)
ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = uempmed), color="steelblue3")+
  scale_y_continuous("Unemployment")
dev.off()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/3.png",res=300,pointsize=10)
ggplot(df, aes(x=IQ, y=Circumference)) + 
  geom_point()+geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="pearson")
dev.off()


png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/4.png",res=300,pointsize=10)
ggplot(df, aes(Financial_status, Height))+ggtitle("Financial Status") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "Height (m)")+
  stat_compare_means(aes(group = Financial_status), method="kruskal.test",
                     label = "p.signif",hide.ns = FALSE,label.x = 1.9)
dev.off()

