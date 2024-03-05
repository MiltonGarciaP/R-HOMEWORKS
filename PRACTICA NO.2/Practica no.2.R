# Crear dos vectores numericos que representen las ganacias y perdidas del mes
  # Vector con las ganancias o perdidas en el poker de Enero a Diciembre
poker_vector <- c(200 , 150 , -100 , -300 , 350 ,150 ,100 , 50 , -200 ,50 , 150 ,250)
  # Vector con las ganancias o perdidas en la ruleta de Enero a Diciembre
roulette_vector <- c(-100, 150 , 20 , -300 , 350 , -150 , -100 , 50 , -200 , -150 ,150 , -100)

# Crea un vector con los meses del año y asignalo como nombre a los elementos de los vectores anteriores
month_years <- c("Enero" ,"Febrero" , "Marzo", "Abril" , "Mayo", "Junio", "Julio" , "Agosto", "Septiembre", "Octubre", "Noviembre" , "Diciembre")
  #Asignar nombre a los elementos de los vectores
names(poker_vector)<- month_years
names(roulette_vector)<- month_years
# Calcula el total de ganancias o perdidas mensuales
total_mes <- poker_vector + roulette_vector
# Calcula el total de ganancias o perdidas en el poker
total_poker <- (poker_vector)
# Calcula el total de ganancias o perdidas en la ruleta
total_roulette <-(roulette_vector)
# Calcula el total de la año
total_year <- (total_roulette + total_vector)
# Selecciona las ganancias/perdida de junio en el vector poker (por indice y por nombre)
poker_june  <- poker_vector[6]
poker_junes <- poker_vector["Junio"]
# Selecciona las ganancias/perdida del mayo, abril y diciembre en el vector poker (por indice y por nombre)
poker_months <- poker_vector[c(5,4,12)] 
poker_month <- poker_vector [c("Mayo","Abril","Diciembre")]
# Selecciona las ganancias desde enero a agosto en la ruleta (por indice y por nombre)
roulette_months <- roulette_vector[c(1:8)]
roulette_month <-  roulette_vector[c("Enero" ,"Febrero" , "Marzo", "Abril" , "Mayo", "Junio", "Julio" , "Agosto")]
# Calcula la media(promedio) de ganancias o perdidas en el poker el abril, octubre y noviembre
average_gain_poker <- mean(poker_vector[c(4,10,11)])
# Selecionar los meses del vector poker donde hubo ganancias ?
selection_vector <- poker_vector > 0
# Selecionar los meses del vector roulette donde hubo perdidas ?
selection_poker <- roulette_vector < 0
#Cual fue la mayor ganancia y  la mayor perdida para el vector Poker ?
poker_max <- max(poker_vector)
poker_min <- min(poker_vector)
#Cual fue la mayor ganancia y mayor perdida para el vector roulette ?
vector_max <- max(roulette_vector)
vector_min <- min(roulette_vector)