#nu merge

ex2 <- function(a,b) {
  c <- readline(prompt="comanda (1 -> 4) : ")
  c <- switch(4,
              return(suma (a,b)),
              return(dif (a,b)),
              return(media(a),media(b),dispersia(a),dispersia(b)),
              grafic(a,b)
              )
}


suma <- function(f, g) {
  tryCatch (
    {
      # formula de convolutie pentru functiile f si g
      function(z) (integrate(Vectorize(function(y) (f(y) * g(z - y))), -Inf, Inf)$value)
    },
    error = function(e)
    {
      stop("eroare")
    })
}


dif <- function(f, g) {
  tryCatch (
    {
      # formula de convolutie pentru functiile f si g
      function(z) (integrate(Vectorize(function(y) (f(y) * g(y - z))), -Inf, Inf)$value)
    },
    error = function(e)
    {
      stop("eroare")
    })
}


media <- function (f){
  integrate(f(x) * x, -Inf, Inf)
}

dispersia <- function (f){
  integrate( ((x - media(f))^2) * f(x) )
}


grafic <- function(a,b){
  plot(x,a,type="l",col="red")
  lines(x,b,col="green")
}


f1 <- function(x){
  return(x^2)
} 
f2 <- function(x){
  return(x)
} 


