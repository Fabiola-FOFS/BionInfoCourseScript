#B- A - BA DA SINTAXE DO R 

#QUASE TUDO EM R É UM OBJETO

X <- 10
X

DATA <- "FABIOLA"
DATA


#OPERADOR DE ATRIBUICAO 
<-  # Ela significa: Coloque o valor da direita dentro do objeto da esquerda.

nome <- "Maria"

altura <- 1.68

peso <- 65

# DESCOBRINDO O TIPO DE OBJETO
#usa-se a funcao class para saber o tipo 
x <- c(1,2,"3") # o R faz a coerção implícita quando se mistura diferentes tipos de dados, neste caso ele transformou tudo em caracter após adicionar um caracter 
x               # no R - um vetor deve conter dados do mesmo tipo (homogenios) 
class(x)


#VETOR - O PRINCIPAL OBJETO EM R 
VETOR É UM OBJETO QUE COMBINA VARIOS ELEMENTOS EM UM SÓ 
ex 2 : 
  idades <- c( 20,25,30,31,29)


# Resumo
# idades → nome do objeto (variável).
<- → operador de atribuição ("recebe").
c() → função que combina valores em um vetor.
20, 25, 30, 31, 29 → elementos (dados) do vetor.
, → separa os elementos.
() → delimitam os argumentos da função.

#Essa sintaxe (objeto <- função(...)) é uma das estruturas mais comuns em R e aparece em praticamente todos os scripts que você escreverá.

#exercicios vetores :
temperaturas <- c(18, 21, 24, 27, 30, 26, 22)
#1 . Exiba todo o vetor. 
temperaturas

#2 Qual é o tipo do objeto?
class(temperaturas)

#3. Qual é a classe do objeto?
NUMERIC
#4. Quantos elementos existem no vetor?
length(temperaturas)

#5. Qual é o primeiro elemento?
head(temperaturas,1) 
head(temperaturas, -2) # traz os primeiros indices menos os dois ultimos

#6. Qual é o último elemento?
tail(temperaturas,1)
tail(temperaturas, -2) # traz os ultimos indices menos os dois primeiros

# observacoes: tail()head()Como UsarSe você quiser ver apenas o último elemento :Rtail(idades, 1)
# Se você quiser ver os três últimos elementos :Rtail(idades, 3)
# Se você omitir o número e rodar apenas tail(idades), o R adotará o comportamento padrão e exibirá os 6 últimos elementos .
# Alternativa com posições negativasOutra forma avançada de usar o head()e tail()é passar um número negativo.Se você digitar tail(idades, -2), o R trará todos os elementos do vetor, exceto os 2 primeiros .

#7 . Qual é o terceiro elemento?
temperaturas[3]

# 8 . Qual é o quinto elemento?
temperaturas[5]

# 9. Qual é a posição do número 27?
which(temperaturas == 27) # funcao which encontra o index preciso 

# 10. Qual é a posição do número 22
which(temperaturas == 22)
  
#11. Qual é o maior valor do vetor?
max(temperaturas) # funcao max retorna o maior valor num vetor 

#12 . Qual é o menor valor do vetor?
min(temperaturas) # retorna o menor valor 
  
# 13 . Qual é a soma de todos os elementos?
sum(temperaturas)

#14 . Qual é a média das temperaturas?
mean(temperaturas) #retira a média
median(temperaturas) # retira a mediana
median(temperaturas, na.rm = TRUE) # para desconsiderar valores vazios

#15 Ordene o vetor em ordem crescente e decrescente.
sort(temperaturas) # funcao sorteio ja arruma em ordem crescente
temperaturas_ordenadas <- sort(temperaturas) #guarda numa variavel o valor ordenado
sort(temperaturas, decreasing = TRUE) # o decreasing na funcao inverte a ordem 

Exercício 2 - Vetor de Caracteres

# Crie o seguinte vetor:
  
  frutas <- c("Maçã", "Banana", "Laranja", "Uva", "Pera", "Manga")

  
Responda às seguintes perguntas
Exiba todo o vetor.
Qual é o tipo do objeto?
  Qual é a classe do objeto?
  Quantos elementos existem?
  Qual é a primeira fruta?
  Qual é a última fruta?
  Qual é a quarta fruta?
  Em qual posição está "Uva"?
  Em qual posição está "Banana"?
  Exiba apenas as frutas da posição 2 até a posição 5.
Exiba apenas a primeira e a última fruta.
Ordene o vetor em ordem alfabética.
Desafio Extra (sem consultar)

Para cada um dos vetores, tente responder usando apenas comandos do R.

Pergunta	Função que você deve descobrir
  # Mostrar o vetor	?  
  # R:  nome_dovetor, print(nome_dovetor) # mais apropriado, str(nome_dovetor) mostra o vetor e sua estrutura
  print(temperaturas); print(frutas)
  str(frutas)
  
  # Descobrir o tipo	?
  typeof(temperaturas); typeof(frutas)
  
  # Descobrir a classe	?
  class(temperaturas); class(frutas)
  
  # Contar elementos	?
  length(temperaturas); length(frutas)
  
  # Encontrar uma posição	?
  temperaturas[2]; frutas[2]
  
  # Maior valor	?
  max(temperaturas); max(frutas)
  
  # Menor valor	?
  min(temperaturas); min(frutas)
  
  # Média	?
  mean(temperaturas)
  
  # Soma	?
   sum(temperaturas)
  
  # Ordenar	?
   sort(temperaturas)
   

   
Desafio Final

Sem copiar exemplos anteriores, crie um vetor chamado salarios contendo 8 salários fictícios e responda:
  
  Quantos salários existem?
  Qual é o maior salário?
  Qual é o menor salário?
  Qual é o quarto salário?
  Qual é o último salário?
  Qual é a média dos salários?
  Qual é a soma dos salários?
  Em qual posição está o maior salário?
  Ordene os salários em ordem crescente.
Ordene os salários em ordem decrescente.

Objetivo: tente resolver todos os exercícios sem consultar o material. Quando terminar, envie o seu código (mesmo que haja erros). Eu farei a correção, explicarei cada comando e mostrarei formas mais eficientes de resolver quando houver.