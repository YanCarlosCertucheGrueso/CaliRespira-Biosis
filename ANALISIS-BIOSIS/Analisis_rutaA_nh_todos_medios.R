###############################
# Días no hábiles - ruta A    #
###############################

## traer datos

moto <- ra_moto_nh_n1
tradicional <- ra_recre_nh_n1
caminar <- ra_peaton_nh_n2

xnorma <- BaseNormativa$dato[2:1527]
oms <- BaseNormativa$oms[2:1527]
mads <- BaseNormativa$mads[2:1527]

motox <- moto$Column1[2:282]
motoy <- moto$Column9[2:282]
tx <- tradicional$Column1[2:452]
ty <- tradicional$Column9[2:452]
cx <- caminar$Column1[2:1930]
cy <- caminar$Column9[2:1930]

#Graficas
plot(motox,motoy, type="l", col = "red", pch = 1,  xlab="Distancia (Km)", ylab="PM2.5 (µg/m³)", ylim=c(0,70))
lines(tx,ty, type="l", col = "blue", pch = 2)
lines(cx,cy, type="l", col = "green", pch = 3)
lines(xnorma, oms, type="l",lty=2, col = "Orange", pch = 4 )
lines(xnorma, mads, type="l",lty=2, col = "Purple", pch = 5 )
legend( "topright",legend=c("Moto","T.P. Tradicional", "Caminar", "OMS (24hr)", "MADS (24hr)"),
        col=c("red","blue", "green", "orange", "purple"),lty = c(1,1,1,2,2), cex=0.8)

