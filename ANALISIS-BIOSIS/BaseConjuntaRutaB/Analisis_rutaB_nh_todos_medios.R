###############################
# Días no hábiles - ruta B    #
###############################

## traer datos

moto <- rb_moto_nh_n1
caminar <- rb_peaton_nh_m1
masivo <- ra_mio_nh_n1

xnorma <- BaseNormativa$dato[2:1527]
oms <- BaseNormativa$oms[2:1527]
mads <- BaseNormativa$mads[2:1527]

motox <- moto$Column1[2:825]
motoy <- moto$Column9[2:825]
cx <- caminar$Column1[2:2018]
cy <- caminar$Column9[2:2018]
miox <- masivo$Column1[2:519]
mioy <- masivo$Column9[2:519]

#Graficas
plot(motox,motoy, type="l", col = "red", pch = 1,  xlab="Distancia (Km)", ylab="PM2.5 (µg/m³)", ylim=c(10,80))
lines(cx,cy, type="l", col = "green", pch = 2)
lines(xnorma, oms, type="l",lty=2, col = "Orange", pch = 3 )
lines(xnorma, mads, type="l",lty=2, col = "Purple", pch = 4 )
legend( "topright",legend=c("Moto", "Caminar", "OMS (24hr)", "MADS (24hr)"),
        col=c("red", "green","orange", "purple"),lty = c(1,1,2,2), cex=0.8)

