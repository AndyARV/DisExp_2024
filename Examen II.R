# Andy Abril Ramos Villa
# 2026333
# 30/05/2024


# Datos insecticidas ------------------------------------------------------

data("InsectSprays")
head(InsectSprays)


summary(InsectSprays)


boxplot(InsectSprays$count ~ InsectSprays$spray, col="purple",
        ylab = "Nématodos encontrados",
        xlab = "Tipo de insecticida")



# Desviación estandar -----------------------------------------------------


tapply(InsectSprays$count, InsectSprays$spray, sd )
bartlett.test(InsectSprays$count, InsectSprays$spray, sd)


# ANOVA -------------------------------------------------------------------

ins.aov <- aov(InsectSprays$count ~ InsectSprays$spray)
summary(ins.aov)

TukeyHSD(ins.aov)

