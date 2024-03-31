
calcular_soluciones <- function() {

  cat("Introduce el coeficiente a: ")
  a <- as.numeric(readline())
  if (is.na(a))
  {
    stop("El Valor debe se numerico")
  }
  
  cat("Introduce el coeficiente b: ")
  b <- as.numeric(readline())
  
  cat("Introduce el coeficiente c: ")
  c <- as.numeric(readline())
  if (is.na(c))
  {
    stop("El Valor debe se numerico")
  }
 
  discriminante <- b^2 - 4*a*c
  
  if (is.na(a))
  {
    stop("El Valor debe se numerico")
  }
 cat(discriminante)
 
  if (discriminante < 0) {
    cat("La ecuación no tiene soluciones reales.\n")
  } else {
    
    solucion1 <- (-b + sqrt(discriminante)) / (2*a)
    solucion2 <- (-b - sqrt(discriminante)) / (2*a)
    
    cat("Las soluciones de la ecuación son:\n")
    cat("x1 =", solucion1, "\n")
    cat("x2 =", solucion2, "\n")
  }
}

calcular_soluciones()



