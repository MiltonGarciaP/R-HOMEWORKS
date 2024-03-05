###################################
# Matrices   MILTON TARSIAN GARCIA PAYERO                     #
###################################

# Los siguientes vectores contienen la recaudaciOn de las tres primeras pelIculas de Star Wars en US y fuera de US (non-US)
new_hope <- c(461, 314.4)
empire_strikes <- c(290.5, 247.9)
return_jedi <- c(309.3, 165.8)

# Crea una matriz que contenga toda la informaciOn (con tres filas)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
  
# Ponles nombres a las columnas: "US" y "non-US"
colnames(star_wars_matrix) <- c("US", "non-US")
  
# Ponles nombres a las filas: "A New Hope", "The Empire Strikes Back" y "Return of the Jedi"
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi") 
  
# Si el precio de la entrada es de 5$, estima el n?mero de espectadores de cada pelI cula
visitors <- star_wars_matrix / 5
  
# Como el precio de las entradas no es el mismo todos los a?os, creamos una matriz de precios
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(rownames(star_wars_matrix), colnames(star_wars_matrix)))

# Repite el cAlculo del nUmero de espectadores con la matriz anterior
visitors <- star_wars_matrix / ticket_prices_matrix
  
# Calcula el numero de espectadores medio en US
average_us_visitors <- mean(visitors[, "US"])
  
# Calcula el numero de espectadores medio fuera de US
average_non_us_visitors <- mean(visitors[, "non-US"])
  
# Calcula los totales de recaudaci?n por pel?cula
worldwide_vector <- apply(star_wars_matrix, 1, sum)
  
# A?ade el vector anterior con los totales por pel?cula como una nueva columna de la matriz
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
  
# Crea una nueva matriz con las recaudaciones de las siguientes tres pel?culas de Star Wars
phantom_menace <- c(474.5, 552.5)
attack_clones <- c(310.7, 338.7)
revenge_sith <- c(380.3, 468.5)
star_wars_matrix2 <- rbind(phantom_menace, attack_clones, revenge_sith)
  
# Ponles nombres a las columnas: "US" y "non-US"
  
colnames(star_wars_matrix2) <- c("US", "non-US")
# Ponles nombres a las filas: "The Phantom Menace", "Attack of the Clones" y "Revenge of the Sith"
rownames(star_wars_matrix2) <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
  
# Une en una nueva matriz la recaudaci?n de todas las pel?culas, las tres primeras filas corresponderán
# a las tres primeras pel?culas y las tres siguientes a las últimas pel?culas
all_wars_matrix <- rbind(all_wars_matrix, star_wars_matrix2)
  
# Calcula los totales de recaudaci?n de todas las pel?culas en US y fuera de US
total_revenue_vector <- colSums(all_wars_matrix)
  
# Calcula la media recaudada de las tres primeras pel?culas fuera de US
non_us_all <- mean(all_wars_matrix[1:3, "non-US"])
  
# Calcula la media recaudada de las 2 primeras pel?culas fuera de US
non_us_some <- mean(all_wars_matrix[1:2, "non-US"])
  
  
###################################
# Data frames MILTON TARSIAN GARCIA PAYERO                     #
###################################

# Crea a partir de los vectores siguientes un data frame
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

planets_df  <-  data.frame(Planets = planets, Type = type, Diameter = diameter, Rotation = rotation, Rings = rings)
  
# Comprueba el contenido del data frame
print(planets_df)
  
# Selecciona la informaci?n de los primeros tres planetas (los m?s cercanos al sol)
closest_planets_df <- planets_df[1:3,]
  
# Selecciona la informaci?n de los ?ltimos tres planetas (los m?s lejanos al sol)
furthest_planets_df <- planets_df[6:8, ]
  
# Comprueba la selecci?n
  
# Selecciona la columna diameter de los ?ltimos seis planetas (los m?s lejanos al sol)
furthest_planets_diameter <- planets_df[6:8, "Diameter"]
  
# Selecciona los planetas que tienen anillos
planets_with_rings_df <- subset(planets_df, Rings == TRUE)
  
# Selecciona los planetas que tienen un diametro inferior al de la tierra (aquellos que tienen diametro < 1, 
# puesto que la variable es relativa al diametro de la tierra)
small_planets_df  <- subset(planets_df, Diameter < 1)
  
# La funci?n order devuelve las posiciones de un vector ordenado ascendentemente
a <- c(4, 10, 3)
order(a)
a[order(a)]

# Ordena el data frame seg?n el diametro de los planetas ascendentemente
positions <- order(planets_df$Diameter)
largest_first_df <- planets_df[positions, ]
largest_first_df