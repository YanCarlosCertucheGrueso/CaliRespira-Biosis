############################################
## EQUPO BIOSIS - ANÁLISIS *Datos*         #
##DÍA HÁBIL - Varios Medios transporte     #
############################################

moto <- med4
cicla <- med2
pie <- med1
recre <- ra_recre_dh_n_1
base <-rutaA_moto_peaton_bici_mio_recre
mio <- med5_
xnorma <- BaseNormativa$dato[2:1527]
oms <- BaseNormativa$oms[2:1527]
mads <- BaseNormativa$mads[2:1527]
#Datos sabado 3 de la tarde día hábil
mx <- moto$Column1[2:940]
my <- moto$Column9[2:940]
cx <- cicla$Column1[2:335] 
cy <- cicla$Column9[2:335]
px <- pie$Column1[2:1475]
py <- pie$Column9[2:1475]
rx <- recre$Column1[2:991]
ry <- recre$Column9[2:991]
mix<- mio$Column1[2:1063]
miy<- mio$Column9[2:1063]


par(xpd=FALSE)
plot(mx,my, type="l", col = "red", pch = 1,  xlab="Distancia(Km)", ylab="PM2.5 (µg/m³)")
lines(rx,ry, type="l", col = "blue", pch = 2)
lines(px,py, type="l", col = "green", pch = 3)
lines(xnorma, oms, type="l",lty=2, col = "Orange", pch = 4 )
lines(xnorma, mads, type="l",lty=2, col = "Purple", pch = 5 )
par(mar=c(5,4,4, 8.1),xpd = T) # PARA Poder dibujar fuera de la región


legend("topright", inset=c(0,0),legend=c("Moto","T.P. Tradicional", "Caminar", "OMS (24hr)", "MADS (24hr)"),
col=c("red","blue", "green", "orange", "purple"), lty = c(1,1,1,2,2), cex=0.8)


# digramas de caja por cada medio de transporte

boxplot(moto$Column9, ylab="PM2.5(??g/m³)", xlab ="Motocicleta", col="red")
boxplot(pie$Column9, ylab="PM2.5(??g/m³)", xlab ="Caminar", col="green")
boxplot(cicla$Column9, ylab="PM2.5(??g/m³)", xlab ="Bicicleta", col="orange")
boxplot(recre$Column9, ylab="PM2.5(??g/m³)", xlab ="T.P Tradicinal", col="blue")

#unico diagrama de cajas
boxplot(base$Column9~base$Column6, ylab="PM2.5(µg/m³)",  xlab ="Modos", 
        col=c("red", "green", "blue"))

#anova de un solo factor

anova(lm(base$Column9~base$Column6))
levels(base$Column6[2:4800])
