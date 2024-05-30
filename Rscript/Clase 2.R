# Andy Abril Ramos Villa
29/04/2024
2026333


# Importar datos ----------------------------------------------------------

# Utilizar función read.csv sirve para importar datos 

cc <- read.csv("Cedro.csv", header = TRUE)

# Revisión datos ----------------------------------------------------------

mean(cc$diametro)
mean(cc$altura)
mean(cc$diametro); median(cc$diametro)


sd(cc$diametro); sd(cc$altura)
range(cc$diametro)

fivenum(cc$diametro)


# Representación gráfica --------------------------------------------------

boxplot(cc$diametro)

boxplot(cc$altura, col = "purple",
        ylim=c(10,30), ylab = "Altura (cm)",
        main= "Cedro rojo")

hist(cc$altura, xlab = "Altura (cm)",
     main = "Cedro rojo",
     ylab = "Frecuencia",
     col = "purple")

stem(cc$altura)

