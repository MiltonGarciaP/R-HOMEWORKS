# Crea los vectores con las ganancias y pérdidas
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)

# Crea un vector con los días de la semana
days_of_week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Asigna nombres a los elementos de los vectores
names(poker_vector) <- days_of_week
names(roulette_vector) <- days_of_week

# Calcula el total de ganancias diario
total_daily <- poker_vector + roulette_vector

# Calcula el total de ganancias en el poker y en la ruleta
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Calcula el total de la semana
total_week <- sum(total_daily)

# Selecciona las ganancias del miércoles en el poker (por índice y por nombre)
poker_wednesday <- poker_vector[3]
poker_wednesday <- poker_vector["Wednesday"]

# Selecciona las ganancias del martes, miércoles y jueves en el poker (por índice y por nombre)
poker_midweek <- poker_vector[2:4]
poker_midweek <- poker_vector[c("Tuesday", "Wednesday", "Thursday")]

# Selecciona las ganancias desde el martes al viernes en la ruleta
roulette_selection_vector <- roulette_vector[2:5]

# Calcula la media de ganancias en el poker el lunes, martes y miércoles
average_midweek_gain <- mean(poker_vector[1:3])
average_midweek_gain
# ¿Qué días de la semana hubo ganancias al poker?
selection_vector <- poker_vector > 0
selection_vector
# Haz la selección anterior sobre el vector con los datos del poker
poker_winning_days <- days_of_week[selection_vector]
poker_winning_days <- days_of_week[poker_vector > 0]
poker_winning_days
# Repite lo mismo sobre el vector con los datos de la ruleta
roulette_winning_days <- days_of_week[roulette_vector > 0]
roulette_winning_days 