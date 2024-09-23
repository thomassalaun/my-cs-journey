########################################
##     TP2 - Simulation aléatoire     ##
##             Thomas SALAÜN          ##      
########################################

## Question 1

# piège, ce n'est pas deux fois la même variable 
# on s'attend à ce que la loi soit, sur l'ensemble discret {0,1,2} et que,
# - p(2) = 1/6
# - p(1) = 1/6
# - p(0) = 4/6

n = 1000
X1 = floor(3*runif(n))*floor(2*runif(n))

hist(X1, freq=FALSE)

## Question 2

#l'idée est de découper [0,1] en trois intervalles de tailles égales à la probabilité
#de valoir une certaine valeur discrète

X2 = runif(100)
X2 = c(rep(0, length(X2[X2<1/2])), rep(1, length(X2[1/2 < X2 & X2 < 2/3])), rep(2, length(X2[2/3 < X2])))
hist(X2, freq=FALSE, main = "n = 100")

X2 = runif(1000)
X2 = c(rep(0, length(X2[X2<1/2])), rep(1, length(X2[1/2 < X2 & X2 < 2/3])), rep(2, length(X2[2/3 < X2])))
hist(X2, freq=FALSE, main = "n = 1 000")

X2 = runif(10000)
X2 = c(rep(0, length(X2[X2<1/2])), rep(1, length(X2[1/2 < X2 & X2 < 2/3])), rep(2, length(X2[2/3 < X2])))
hist(X2, freq=FALSE, main = "n = 10 000")

## Question 3

