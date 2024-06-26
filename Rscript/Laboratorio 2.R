# Andy Abril Ramos Villa
# 2026333
# 08/05/2024



# Ingresar datos directos en la consola -----------------------------------

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 11.2,
         24.1, 14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)



# Datos de URL seguras: Dropbox y Github ----------------------------------


library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/", 
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")

inventario <- read.csv(file)
head(inventario)



# Operaciones con la base de datos ----------------------------------------

mean(trees$DBH)

sd(trees$dbh)
sum(trees$dbh < 10)
which(trees$dbh < 10)

trees.13 <- trees[! (trees$parcela == "2"), ]
trees.13
trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(trees$dbh)
mean(trees.1$dbh)


# Representación gráfica --------------------------------------------------


# Histogramas -------------------------------------------------------------

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep, xlim = c(0, 20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies", 
     xlab = "Horas sueño", ylab = "Frecuencia", las = 1, col = "#996600")


# Datos -------------------------------------------------------------------

hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14), # Cambiar los limites de x & y,
     main = "Total de horas de sueño de 39 especies ", # Cambiar el titulo,
     xlab = "Horas de sueño", # Cambiar eje de las x,
     ylab = "Frecuencia", # Cambiar eje de las y,
     las = 1, # Cambiar orientacion de y,
     col = "#996600") # Cambiar color de las barras


# Barplots ----------------------------------------------------------------

data("chickwts")
head(chickwts[c(1:2, 42:43, 62:64),])

feeds <- table(chickwts$feed)
feeds

barplot(feeds)
barplot(feeds[order(feeds, decreasing = FALSE)])


# Personalizar histograma -------------------------------------------------

barplot(sort(feeds), horiz = TRUE,
        main = "Frecuencia de alimentacion",
        las = 1, xlab = "Numeros de pollos",
        col = c("purple", "pink", "green", "brown", "blue", "yellow"))

