# Incluimos la libreria
library(ggplot2)
library(tidyverse)

# Resumen del contenido del set de datos
str(iris)     #Datos sobre la flor Iris de Edgar Anderson
str(diamonds) #This dataset contains information about 53,940 round-cut diamonds.

#Ejercicio 1: Scatter Plot con Iris Dataset

#Objetivo: Crear un gr?fico de dispersi?n para explorar la relaci?n entre la longitud y anchura de los s?palos en la flor Iris.

#Pasos:
#1. Cargar el conjunto de datos llamada iris de la librer?a ggplot2.
data(iris)
#2. Utilizar ggplot para generar un gr?fico de puntos (scatter plot) con Longitud (eje X) vs. Anchura en S?palos (eje Y).
#3. Renombrar los ejes X e Y para reflejar los datos representados (llamado axis).
#4. Agregar un t?tulo descriptivo al gr?fico.
estadistica <-ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +  # Definir los ejes
  geom_point() +                                         # Agregar puntos al gráfico
  labs(x = "Longitud del Sépalo",                        # Renombrar eje X
       y = "Anchura del Sépalo",                         # Renombrar eje Y
       title = "Relación entre Longitud y Anchura del Sépalo en Iris")  # Agregar título
print(estadistica)
#5. Realizar conclusiones sobre la relacion entre la longitud y la anchura de los sepalos (inferir).

"parece haber una correlación positiva débil entre la longitud y el ancho de los sépalos en las flores de Iris. A medida que la longitud del sépalo aumenta, 
el ancho del sépalo tiende a aumentar ligeramente pero no de manera consistente.
La mayoría de los puntos de datos están agrupados entre 5 y 7 en el eje x (Longitud del Sépalo) y entre 2.5 y 3.5 en el eje y (Anchura del Sépalo). 
Esto sugiere que la mayoría de las flores de Iris tienen una longitud de sépalo de entre 5 y 7 cm y un ancho de sépalo de entre 2.5 y 3.5 cm.
Por lo tanto, aunque hay una tendencia general de que los sépalos más largos sean ligeramente más anchos, esta relación no es fuerte y hay una considerable variabilidad en los datos. 
Es posible que otros factores, como la especie de Iris o las condiciones ambientales, también influyan en la longitud y el ancho de los sépalos.
"


#Preguntas reflexivas para inferir:
#Que patrones o tendencias puedes identificar en la dispersion de los datos?

"Basándome en el gráfico de dispersión, se pueden identificar los siguientes patrones y tendencias en la dispersión de los datos:
  
Agrupación de datos: La mayoría de los puntos de datos están agrupados entre 5 y 7 en el eje x (Longitud del Sépalo) y entre 2.5 y 3.5 en el eje y (Anchura del Sépalo). 
Esto sugiere que la mayoría de las flores de Iris tienen una longitud de sépalo de entre 5 y 7 cm y un ancho de sépalo de entre 2.5 y 3.5 cm.
Correlación débil: Hay una correlación positiva débil entre la longitud y el ancho de los sépalos. 
Esto significa que a medida que la longitud del sépalo aumenta, el ancho del sépalo también tiende a aumentar, pero no de manera consistente.
Variabilidad en los datos: Aunque hay una tendencia general de que los sépalos más largos sean ligeramente más anchos, esta relación no es fuerte y hay una considerable variabilidad en los datos. 
Esto indica que hay otros factores que pueden estar influyendo en la longitud y el ancho de los sépalos.
"
#Hay alguna correlacion evidente entre la longitud y la anchura de los sepalos?
"Sí, basándome en el gráfico de dispersión , parece haber una correlación positiva débil entre la longitud y el ancho de los sépalos en las flores de Iris. 
Esto significa que a medida que la longitud del sépalo aumenta, el ancho del sépalo también tiende a aumentar, pero no de manera consistente. 
Sin embargo, esta correlación es débil y hay una considerable variabilidad en los datos, lo que indica que hay otros factores que pueden estar influyendo en la longitud y el ancho de los sépalos.
"

#Ejercicio 2: GrAfico de DispersiOn con DiferenciaciOn por Color
#Objetivo: Crear un grAfico de dispersiOn que represente la relaciOn entre la longitud y la anchura de los sEpalos y los pEtalos, diferenciando por color los puntos correspondientes a los pEtalos.

#Pasos a seguir:
#1. Utilizar el dataset llamado iris de la librerIa ggplot2.
data(iris)
#2. Generar un grAfico de dispersiOn con Longitud (eje X) vs. Anchura en (eje Y) de los sEpalos y pEtalos, diferenciar los puntos relacionados con los pEtalos mediante colores.
#3. Agregar un titulo descriptivo al grafico.
#4. Reflexionar sobre cualquier patrOn o relaciOn observable despuEs de crear la grAfica.
"Existe una clara separación entre los puntos de los sépalos (rojos) y 
los puntos de los pétalos (verdes y azules), lo que sugiere una diferencia 
significativa en las dimensiones de estas estructuras florales."
grafico <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +  # Definir los ejes para los sépalos
  geom_point(aes(color = Species), shape = 1) +          # Diferenciar por color los puntos según la especie de iris
  geom_point(aes(x = Petal.Length, y = Petal.Width, color = Species), shape = 2) +  # Añadir puntos para los pétalos y diferenciar por color
  labs(x = "Longitud",                                  # Renombrar eje X
       y = "Anchura",                                   # Renombrar eje Y
       title = "Relación entre Longitud y Anchura de Sépalos y Pétalos")  # Agregar título

print(grafico)
#Preguntas para reflexionar:
#?Que conclusiones puedes extraer al observar la dispersion diferenciada por color?
"
1.Setosa (triángulos rojos): Las flores setosa tienden a tener una menor longitud y anchura de sépalos y pétalos, agrupándose en la esquina inferior izquierda del gráfico.
2.Versicolor (triángulos verdes): Las flores versicolor muestran una longitud y anchura moderadas, dispersándose en el medio del gráfico.
3.Virginica (círculos azules): Las flores virginica tienden a tener una mayor longitud pero una anchura variada, dispersándose hacia la esquina superior derecha del gráfico.
"
#?Se pueden identificar diferencias significativas entre los puntos relacionados con los sepalos y los petalos?
"el gráfico muestra que los pétalos, especialmente en la especie virginica, son mucho más largos y anchos que los sépalos en todas las especies de Iris representadas. 
Esta diferencia en las dimensiones de sépalos y pétalos es una característica distintiva de la flor Iris y permite diferenciar fácilmente estas estructuras en el gráfico."

#Ejercicio 3: AnIlisis de Precios y Quilates de Diamantes por Tipo de Corte
#Objetivo: Crear un gr?fico de l?neas utilizando el dataset llamado diamonds para explorar la relacion entre el precio y los quilates de los diamantes, segmentados por el tipo de corte.
#Pasos a seguir:
#1. Utilizar el dataset llamado diamonds.
data(diamonds)
#2. Generar un grafico de lineas representando el precio (eje Y) vs los quilates (eje X), segmentado por el campo 'cut'.
#3. Agregar un titulo descriptivo al gr?fico.
#4. Cambiar el tipo de linea a dotdash y configurar su tamaño a 1.
#5. Deshabilitar el intervalo de confianza. (Investigue sobre esto, para lograrlo)
#6. Renombrar los ejes para reflejar el precio y la categoria.
#7. Cambiar el fondo del grafico.
#8. Modificar el nombre del titulo de la leyenda de 'Cut' a 'Corte'.
plot <- ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_line(linetype = "dotdash", size = 1) +
  labs(title = "Relación entre Precio y Quilates por Tipo de Corte",
       x = "Quilates",
       y = "Precio",
       color = "Corte") +
  theme_bw() +
  theme(legend.title = element_text(face = "bold"))
print(plot)


#9. Realice las inferencias.
"este gráfico muestra claramente que el tipo de corte del diamante es un factor importante que influye en su precio, además del tamaño en quilates. Los cortes de mayor calidad, como 
Premium y Very Good, tienden a tener precios más altos, mientras que el corte Ideal presenta precios más asequibles en comparación con los demás cortes para un mismo tamaño de diamante."

#Preguntas para reflexionar:
#-Que conclusiones se pueden inferir despues de observar el comportamiento de los precios en relacion con los quilates y los diferentes tipos de corte?
"Relación entre precio y quilates: Hay una tendencia general de que a medida que aumentan los quilates, también lo hace el precio. Esto es consistente con la idea de que los diamantes 
más grandes (más quilates) tienden a ser más caros.
Diferencias entre tipos de corte: Los diamantes con un corte “Ideal” tienden a tener precios más bajos en comparación con otros cortes para la misma cantidad de quilates. 
Esto podría indicar que el tipo de corte puede influir en el precio de los diamantes, además de su tamaño.
Densidad de los datos: La mayoría de los datos se concentran en menos de 2 quilates, mostrando una amplia gama en términos del precio para esta categoría. A medida que aumenta la cantidad de quilates, se observa una disminución en la densidad del número total puntos presentes. 
Esto podría indicar que los diamantes de mayor tamaño son menos comunes."

#Existe alguna variacion notable en los precios entre los diferentes cortes de diamantes?
"Sí, según el gráfico, parece haber una variación en los precios entre los diferentes cortes de diamantes. Los diamantes con un corte “Ideal” tienden a tener precios más bajos 
en comparación con otros cortes para la misma cantidad de quilates. Esto sugiere que el tipo de corte puede influir en el precio de los diamantes, además de su tamaño. "

#Ejercicio 4: Anilisis de Casos Confirmados de COVID-19 en Paises Seleccionados.
#Objetivo: Importar el archivo CSV llamado "covid_19"
#, transformar los datos y crear una visualizacion de casos confirmados de COVID-19 
#en los paises: China, Italia y Espa?a.

#4)Pasos a seguir
#1. Importar el archivo CSV "covid_19".
covid_data <- read.csv("C:/Users/DELL/Desktop/Archivos de milton/ITLA/Ciencia de Datos/Trabajos Itla/2. Segundo Cuatrimestre/PROGRAMACION I/R LENGUAJE/Práctica No.5 Visualizaciones/covid_19.csv", sep = ";")

#2. Utilizar la librer?a lubridate para cambiar el formato del campo 'Date' a tipo fecha.
library(lubridate)
covid_data$Date <- dmy(covid_data$Date)
index <- !is.na(covid_data$Date)
covid_data$Date[index] <- covid_data$Date[index]
#3. Filtrar los datos para incluir solo los paises "China", 
#"Italy" y "Spain" utilizando la funcion filter.
library(dplyr)
paises_seleccionados <- covid_data %>%
  filter(Country_Region %in% c("China", "Italy", "Spain"))
#4. Crear un gr?fico de l?neas con los casos confirmados (eje Y) y la fecha (eje X).
#5. Cambiar los nombres de los ejes X e Y a "Fecha" y "Casos Confirmados".
#6. Modificar el fondo del gr?fico para "Enfermos en Espa?a, China e Italia"

grafico <- ggplot(paises_seleccionados, aes(x = Date, y = Confirmed, color = Country_Region)) +
  geom_line() +
  labs(title = "Enfermos en España, China e Italia",
       x = "Fecha",
       y = "Casos Confirmados")

print(grafico)
#7. Despu?s de realizar la gr?fica que conclusiones puede inferir?
"China (línea roja): China muestra un pico muy alto de casos confirmados al inicio del año 2020 y se mantiene alta durante todo el año. 
Esto sugiere que la como la enferremdad empezo en china  y se propagó rápidamente.
España e Italia (líneas verde y azul): Ambos países muestran un número mucho menor de casos confirmados en comparación con China. Sin embargo, 
hay un aumento notable en los casos hacia finales del año. Esto podría indicar que la enfermedad se propagó a estos países más tarde.
Tendencia general: La tendencia general sugiere que la enfermedad se propagó rápidamente y afectó a un gran número de personas en estos tres países durante 2020."

