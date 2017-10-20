"""
Universidade do Vale do Itajaí
Trabalho da matéria de Inteligência Artificial
Curso: Engenharia de Computação
Aluno: Chuang Yu Min


Dataset from:
Accurate occupancy detection of an office room from light,
temperature, humidity and CO2 measurements using statistical learning models.
Luis M. Candanedo, Véronique Feldheim.
Energy and Buildings. Volume 112, 15 January 2016, Pages 28-39.


Ranking of most similar cases
"""

#Reading data
f = open('datatraining.txt', 'r')
data = f.read().split('\n');
f.close()

#"date","Temperature","Humidity","Light","CO2","HumidityRatio","Occupancy"
print("\nOccupancy Detection\n")

#standard weight(importance)
importance = [0.2, 0.1, 1, 0.4]

#User's Case
usersCase = [0.0]*4

#Similarity list
similarity = [0.0]*4

#ranking list
ranking = []

#global simimlarity list
#globalsimilarity = []

#Input data
print("Input your Case\n")
usersCase[0] = float(input("Temperature: "))
usersCase[1] = float(input("Humidity: "))
usersCase[2] = float(input("Light: "))
usersCase[3] = float(input("CO2: "))



for i in range(1,len(data)):
    
    case = data[i].split(',')
    
    #Adjusting data formats
    case[0] = int(case[0].replace('"',''))  #0 - index number
    case[1] = case[1].replace('"','')       #1 - date/time
    case[2] = float(case[2])                #2 - Temperature (°C)
    case[3] = float(case[3])                #3 - Humidity (%)
    case[4] = float(case[4])                #4 - Light (lumens)
    case[5] = float(case[5])                #5 - CO2 (idk)
    case[6] = float(case[6])                #6 - HumidityRatio
    case[7] = bool(int(case[7]))            #7 - Occupancy (bool)
    
    
    #Calculating Similarity list (smaller/bigger for all variables)
    for i in range(len(similarity)):
        if (usersCase[i]<case[i+2]):
            similarity[i] = usersCase[i]/case[i+2]
        else:
            similarity[i] = case[i+2]/usersCase[i]
    
    
    #initializing local total similarity variable
    totalsimilarity = 0.0
    
    #accumulating importance*similarity to get total at the end
    for i in range(len(importance)):
        totalsimilarity = importance[i]*similarity[i] + totalsimilarity
    
    #calculating and appending global similarity list
    globalsimilarity = totalsimilarity/sum(importance)
    case.insert(1, globalsimilarity)
    
    ranking.append(case)

ranking.sort(key=lambda x: x[1], reverse=True)

print("Ranking - Top 20\n")
print("Position.\n [Case Number, Global Similarity, Date and time, Temperature, Humidity, Light, CO2, Humidity Ratio, Occupancy")

for i in range(20):
    print(i+1, ".\n", ranking[i])