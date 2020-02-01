############################################
## EQUPO BIOSIS - ANÁLISIS *Datos*         #
##DÍA HÁBIL - Varios Medios transporte     #
############################################

moto <- med4
cicla <- med2
pie <- med1

#Datos sabado 3 de la tarde día hábil
mx <- moto$Column1[2:940]
my <- moto$Column9[2:940]
cx <- cicla$Column1[2:335] 
cy <- cicla$Column9[2:335]
px <- pie$Column1[2:1475]
py <- pie$Column9[2:1475]


plot(mx,my, type="l", col = "red", pch = 1,  xlab="Km", ylab="PM2.5(??g/m³)")
lines(px,py, type="l", col = "green", pch = 3)
legend( "topleft",legend=c("Moto","T.P. Tradicional", "Caminar"),
col=c("red","blue", "green"), lty = 1)


# digramas de caja por cada medio de transporte

boxplot(moto$Column9, ylab="PM2.5(??g/m³)", xlab ="Motocicleta", col="red")
boxplot(pie$Column9, ylab="PM2.5(??g/m³)", xlab ="Caminar", col="green")
boxplot(cicla$Column9, ylab="PM2.5(??g/m³)", xlab ="Bicicleta", col="orange")

