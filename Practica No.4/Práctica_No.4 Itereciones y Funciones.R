#1. Importa el archivo adjunto "mu_enoe_VF.xlsx" y realizar
library(readxl)
datos <- read_excel("C:/Users/DELL/Desktop/Archivos de milton/ITLA/Ciencia de Datos/Trabajos Itla/2. Segundo Cuatrimestre/PROGRAMACION I/R LENGUAJE/Practica No.4/mu_enoe_VF.xlsx")

#2.crer un bucle que itere por la columna de ingresos_mensual del dataset he imprima
#por pantalla la siguiente frase:
#"El logatimo", X , "El cual est� en la posici�n", X, "es igual a:" Y
for (i in 1:nrow(datos)) {
  if (datos$ingreso_mensual[i] > 0) {
    log_value <- log(datos$ingreso_mensual[i])
    cat("El logaritmo", i, "que está en la posición", i, "es igual a:", log_value, "\n")
  } else {
    cat("El valor en la posición", i, "no se puede calcular el logaritmo\n")
  }
}

#3Crear una funci�n que me retorne la suma total de los logaritmos naturales de 
#los valores del dataset (Todas las columas y filas)
suma_logaritmos <- function(data) {
  suma <- 0
  for (i in seq_along(data)) {
    for (j in seq_along(data[[i]])) {
      tryCatch({
        val <- data[[i]][j]
        if (val > 0) {
          suma <- suma + log(val)
        }
      }, error = function(e) {})
    }
  }
  return(suma)
}

# Llamada a la función
result <- suma_logaritmos(datos)
cat("La suma total de los logaritmos naturales es:", result)