############################################
## EQUPO BIOSIS - ANÁLISIS *Datos*         #
##       DÍA HÁBIL - MEDIO: Bicicleta      #
############################################


#comparación de 3 mediciones en la tarde

#########
# datos #
#########
cicla1 <- ra_cicla_dh_n_1
cicla2 <- ra_cicla_dh_n_2
cicla3 <- ra_cicla_dh_n_3
cicla4 <- ra_cicla_dh_m_1

cx1 <-cicla1$Column1[2:476]
cx2 <-cicla2$Column1[2:335]
cx3 <-cicla3$Column1[2:294]
cx4 <-cicla4$Column1[2:941]
cy1 <-cicla1$Column9[2:476]
cy2 <-cicla2$Column9[2:335]
cy3 <-cicla3$Column9[2:294]
cy4 <-cicla4$Column9[2:941]


# graficas de tarde
plot(cx1,cy1, type="l", col = "red", pch = 1,  xlab="Km", ylab="PM2.5(??g/m³)")
lines(cx2,cy2, type="l", col = "green", pch = 2)
lines(cx3,cy3, type="l", col = "orange", pch = 3)

#graficas de mañana
plot(cx4,cy4, type="l", col = "red", pch = 1,  xlab="Km", ylab="PM2.5(??g/m³)")

