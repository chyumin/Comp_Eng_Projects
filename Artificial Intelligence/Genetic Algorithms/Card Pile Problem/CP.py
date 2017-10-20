# -*- coding: utf-8 -*-
"""
Universidade do Vale do Itajai
Trabalho da materia de Inteligencia Artificial
Curso: Engenharia de Computacao
Aluno: Chuang Yu Min

Algoritmos Geneticos: Problema das Cartas

Problema:
   Existem 10 cartas numeradas de 1 a 10
   Separar em 2 pilhas, onde:
      - Soma da pilha 1 = 36
      - Produto da pilha 2 = 360

Modelagem:
   
   Tamanho da Populacao: 20, gerada por Permutação
   Funcao Fitness: Calc taxa de erro para as 2 pilhas, e soma a taxa
                   O menor valor é o melhor
   Metodo de Selecao: Torneio (3 combinações)
   Cruzamento: 2 Parentes geram 2 filhos   
   Mutacao: Swap entre 2 cartas das pihlas - 1% chance
   Condicao de parada: Funcao Fitness = 0 ou 2000 iteracoes
   
"""
import random
import matplotlib.pyplot as plt

#Tamanho da populacao
tamPopulacao = 20

#Taxa de mutacao
taxaMutacao = 0.1

#Tamanho do Torneio (Selecao)
tamTorneio = 3

#Valor total da pilha de soma
valorSoma = 36

#Valor total da pilha de produto
valorProduto = 360

#Uma das condicoes de parada
maxGeracoes = 50000

#Numero de geracoes
nGeracoes = 0

#Vetor para Populacao
populacao = []

#Fitness
fitnessHist = []

#Gerando populacao aleatoria
for i in range(tamPopulacao):
   cartas = [x+1 for x in range (10)]
   random.shuffle(cartas)
   populacao.append(cartas)

#Funcao para Calcular Fitness
def calcFitness(cartas):
   soma = 0
   for i in range(5):
      soma += cartas[i]
   
   produto = 1;
   for i in range(5, 10):
      produto *= cartas[i]
   
   erroSoma = abs(soma - valorSoma)/valorSoma
   erroProduto = abs(produto - valorProduto)/valorProduto
   return erroSoma+erroProduto

#Funcao torneio retorna o index do vencedor
def torneio(pop):
   x = []
   for i in range(tamTorneio):
      x.append(int(random.random()*tamPopulacao))
      
   vetorFit = []
   for i in x:
      vetorFit.append(calcFitness(pop[i]))
      
   fit_min = min(vetorFit)
   index = vetorFit.index(fit_min)

   return pop[x[index]]

#Funcao calc menor fitness
def menorFitness(pop):
   fitness = []
   for i in range(tamPopulacao):
      fitness.append(calcFitness(pop[i]))
   
   menor = min(fitness)
   
   return menor, fitness.index(menor)

#Cruzamento
def cruzamento(p1, p2):
   iIni = 1
   iFim = 4
   
   f = [None]*10
   
   for i in range (iIni, iFim):
      f[i]=p1[i];
   
   for i in range(len(f)):
      if not(p2[i] in f):
         for j in range(len(f)):
            if f[j]==None:
               f[j]=p2[i]
               break
   return f

#Primeiro calc Fitness
mFitness, iMenorFitness = menorFitness(populacao)
print(mFitness)
fitnessHist.append(mFitness)

#Laço iteracoes
while nGeracoes < maxGeracoes and mFitness>0:
   
   novaPopulacao = []
   
   for i in range(tamPopulacao):
      p1 = torneio(populacao)
      p2 = torneio(populacao)
      
      novaPopulacao.append(cruzamento(p1,p2))
   
   populacao=novaPopulacao[:]
   
   
   for i in populacao:
      if random.random()<taxaMutacao:
         x = int(random.random()*9)
         y = int(random.random()*9)
         i[x], i[y] = i[y], i[x]
#         i[4], i[5] = i[5], i[4]
   
   
   mFitness, iMenorFitness = menorFitness(populacao)
   melhorSolucao = populacao[iMenorFitness]
   fitnessHist.append(mFitness)
   print(mFitness)
   nGeracoes+=1


soma = 0
for i in melhorSolucao[:5]:
   soma += i

produto = 1;
for i in melhorSolucao[5:10]:
   produto *= i

plt.plot(fitnessHist)
plt.ylabel('Funcao Fitness')
plt.show()

print("Solucao Final: ")
print("Pilha 1: " + str(melhorSolucao[:5]))
print("Soma: " + str(soma))
print("Pilha 2: " + str(melhorSolucao[5:10]))
print("Produto: " + str(produto))
print("\nNumero de Geracoes: " + str(nGeracoes))
print("Fitness: " + str(mFitness))