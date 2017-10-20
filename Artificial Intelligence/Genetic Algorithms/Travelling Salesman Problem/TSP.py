"""
Universidade do Vale do Itajai
Trabalho da materia de Inteligencia Artificial
Curso: Engenharia de Computacao
Aluno: Chuang Yu Min

Algoritmos Geneticos: Caixeiro Viajante

Adaptado de: 
Codigo Fonte: https://gist.github.com/turbofart/3428880#file-tsp-py-L103
Artigo Original: http://goo.gl/cJEY1

Modelagem/Parametros:
   
   Cidades: Posicao X, Y (valores de 0 a 200)
   Calc Distancia entre cidades: Linha reta (Pitagoras)
   
   
   Tamanho da Populacao: 50
   Funcao Fitness: 1/(Distancia Total)
   Metodo de Selecao: Torneio (3 rotas)
   Cruzamento: 2 Parentes geram 1 filho
               Parente 1: Cidades de 3-7
               Parente 2: Preenchimento linear
               Ex:
                  Parente 1: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
                  Parente 2: 4, 3, 2, 1, 8, 7, 6, 9, 10, 5
                  Filho    : 1, 8, 3, 4, 5, 6, 7, 2, 9, 10
                            P2,P2,P1,P1,P1,P1,P1,,P2,P2,P2
               
   Mutacao: Swap entre 2 cidades de uma rota - 1.5% chances para cada cidade
   Elitismo: Mantem sempre o de maior funcao fitness na populacao
   Condicao de parada: evolucao de 100 geracoes
   
"""

import math
import random


class City:

   def __init__(self, x=None, y=None):
      self.x = x
      self.y = y
      
      
   def getX(self):
      return self.x
   
   def getY(self):
      return self.y
   
   #Calculating distance - pitagoras
   def distanceTo(self, city):
      xDistance = abs(self.getX() - city.getX())
      yDistance = abs(self.getY() - city.getY())
      distance = math.sqrt( (xDistance*xDistance) + (yDistance*yDistance) )
      return distance
   
   def __repr__(self):
      return str(self.getX()) + ", " + str(self.getY())


class TourManager:
   destinationCities = []
   
   def addCity(self, city):
      self.destinationCities.append(city)
   
   def getCity(self, index):
      return self.destinationCities[index]
   
   def numberOfCities(self):
      return len(self.destinationCities)


class Tour:
   def __init__(self, tourmanager, tour=None):
      self.tourmanager = tourmanager
      self.tour = []
      self.fitness = 0.0
      self.distance = 0
      if tour is not None:
         self.tour = tour
      else:
         for i in range(0, self.tourmanager.numberOfCities()):
            self.tour.append(None)
   
   def __len__(self):
      return len(self.tour)
   
   def __getitem__(self, index):
      return self.tour[index]
   
   def __setitem__(self, key, value):
      self.tour[key] = value
   
   def __repr__(self):
      geneString = "|"
      for i in range(0, self.tourSize()):
         geneString += str(self.getCity(i)) + "|"
      return geneString
   
   #Creates a random individual
   def generateIndividual(self):
      for cityIndex in range(0, self.tourmanager.numberOfCities()):
         self.setCity(cityIndex, self.tourmanager.getCity(cityIndex))
      random.shuffle(self.tour)
   
   #Gets a city from the tour
   def getCity(self, tourPosition):
      return self.tour[tourPosition]
   
   #Sets a city from the tour
   def setCity(self, tourPosition, city):
      self.tour[tourPosition] = city
      self.fitness = 0.0
      self.distance = 0
   
   #Gets the tours' fitness
   def getFitness(self):
      if self.fitness == 0:
         self.fitness = 1/float(self.getDistance())
      return self.fitness
   
   #Gets the total distance of the tour
   def getDistance(self):
      if self.distance == 0:
         tourDistance = 0
         for cityIndex in range(0, self.tourSize()):
            fromCity = self.getCity(cityIndex)
            destinationCity = None
            if cityIndex+1 < self.tourSize():
               destinationCity = self.getCity(cityIndex+1)
            else:
               destinationCity = self.getCity(0)
            tourDistance += fromCity.distanceTo(destinationCity)
         self.distance = tourDistance
      return self.distance
   
   def tourSize(self):
      return len(self.tour)
   
   def containsCity(self, city):
      return city in self.tour


class Population:
   def __init__(self, tourmanager, populationSize, initialise):
      #Tours vector (population)
      self.tours = []
      for i in range(0, populationSize):
         self.tours.append(None)
      
      #Generate Tours if initialise = True
      if initialise:
         for i in range(0, populationSize):
            newTour = Tour(tourmanager)
            newTour.generateIndividual()
            self.saveTour(i, newTour)
      
   def __setitem__(self, key, value):
      self.tours[key] = value
   
   def __getitem__(self, index):
      return self.tours[index]
   
   def saveTour(self, index, tour):
      self.tours[index] = tour
   
   def getTour(self, index):
      return self.tours[index]
   
   #Get Fittest
   def getFittest(self):
      fittest = self.tours[0]
      for i in range(0, self.populationSize()):
         if fittest.getFitness() <= self.getTour(i).getFitness():
            fittest = self.getTour(i)
      return fittest
   
   def populationSize(self):
      return len(self.tours)


class GA:
   def __init__(self, tourmanager):
      #GA parameters
      self.tourmanager = tourmanager
      self.mutationRate = 0.015
      self.tournamentSize = 3
      self.elitism = True # New concept!
   
   #Evolve Population - Crossover + Mutate
   def evolvePopulation(self, pop):
      newPopulation = Population(self.tourmanager, pop.populationSize(), False)
      elitismOffset = 0
      if self.elitism:
         newPopulation.saveTour(0, pop.getFittest())
         elitismOffset = 1
      
      for i in range(elitismOffset, newPopulation.populationSize()):
         parent1 = self.tournamentSelection(pop)
         parent2 = self.tournamentSelection(pop)
         child = self.crossover(parent1, parent2)
         newPopulation.saveTour(i, child)
      
      for i in range(elitismOffset, newPopulation.populationSize()):
         self.mutate(newPopulation.getTour(i))
      
      return newPopulation
   
   #Crossover
   def crossover(self, parent1, parent2):
      child = Tour(self.tourmanager)
      
      startPos = 1
      endPos = 7
      
      for i in range(0, child.tourSize()):
         if i > startPos and i < endPos:
            child.setCity(i, parent1.getCity(i))

      
      for i in range(0, parent2.tourSize()):
         if not child.containsCity(parent2.getCity(i)):
            for ii in range(0, child.tourSize()):
               if child.getCity(ii) == None:
                  child.setCity(ii, parent2.getCity(i))
                  break
      
      return child
   
   #Mutate
   def mutate(self, tour):
      for tourPos1 in range(0, tour.tourSize()):
         if random.random() < self.mutationRate:
            tourPos2 = int(tour.tourSize() * random.random())
            
            city1 = tour.getCity(tourPos1)
            city2 = tour.getCity(tourPos2)
            
            tour.setCity(tourPos2, city1)
            tour.setCity(tourPos1, city2)
   
   #Tournament Selection
   def tournamentSelection(self, pop):
      tournament = Population(self.tourmanager, self.tournamentSize, False)
      for i in range(0, self.tournamentSize):
         randomId = int(random.random() * pop.populationSize())
         tournament.saveTour(i, pop.getTour(randomId))
      fittest = tournament.getFittest()
      return fittest



if __name__ == '__main__':
   
   tourmanager = TourManager()
   
   # Create and add our cities
   city = City(60, 200)
   tourmanager.addCity(city)
   city2 = City(180, 200)
   tourmanager.addCity(city2)
   city3 = City(80, 180)
   tourmanager.addCity(city3)
   city4 = City(140, 180)
   tourmanager.addCity(city4)
   city5 = City(20, 160)
   tourmanager.addCity(city5)
   city6 = City(100, 160)
   tourmanager.addCity(city6)
   city7 = City(200, 160)
   tourmanager.addCity(city7)
   city8 = City(140, 140)
   tourmanager.addCity(city8)
   city9 = City(40, 120)
   tourmanager.addCity(city9)
   city10 = City(100, 120)

   
   # Initialize population
   pop = Population(tourmanager, 50, True);
   print ("Initial distance: " + str(pop.getFittest().getDistance()))
   print("Random Tour: ")
   print(pop.getFittest())
   
   ga = GA(tourmanager)
   
   # Evolve population for 100 generations
   for i in range(0, 100):
      pop = ga.evolvePopulation(pop)
   
   # Print final results
   print ("\n")
   print ("Final distance: " + str(pop.getFittest().getDistance()))
   print ("Solution:")
   print (pop.getFittest())