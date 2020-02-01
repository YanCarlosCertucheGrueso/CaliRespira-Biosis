############################################
## EQUPO BIOSIS - ANÁLISIS *Datos*         #
##DÍA HÁBIL - Varios Medios transporte     #
############################################

moto <- rb_moto_dn_m_1
pie <-rb_caminar_dh_m_1
mio <-rb_mio_dh_m_1
baseRb <- rutab_moto_peaton_mio

xnorma <- BaseNormativa$dato[2:1527]
oms <- BaseNormativa$oms[2:1527]
mads <- BaseNormativa$mads[2:1527]

mx <- rb_moto_dn_m_1$Column1[2:1995]
my <- rb_moto_dn_m_1$Column9[2:1995]
px <- rb_caminar_dh_m_1$Column1[2:1128]
py <- rb_caminar_dh_m_1$Column9[2:1128]
mix <- rb_mio_dh_m_1$Column1[2:1917]
miy <- rb_mio_dh_m_1$Column9[2:1917]

#gráfica comparativa
par(xpd=FALSE)
plot(mx,my, type="l", col = "red", pch = 1,  xlab="Distancia (Km)", ylab="PM2.5 (µg/m³)")
lines(mix,miy, type="l", col = "blue", pch = 2)
lines(px,py, type="l", col = "green", pch = 3)
lines(xnorma, oms, type="l",lty=2, col = "Orange", pch = 4 )
lines(xnorma, mads, type="l",lty=2, col = "Purple", pch = 5 )

#par(mar=c(5,4,4, 8.1),xpd = T) # PARA Poder dibujar fuera de la región

legend( "topright",legend=c("Moto","T.P. Masivo", "Caminar", "OMS (24hr)", "MADS (24hr)"),
        col=c("red","blue", "green", "orange", "purple"),lty = c(1,1,1,2,2), cex=0.8)

#diagramas de cajas de cada transporte
boxplot(my, ylab="PM2.5(??g/m³)", xlab ="Motocicleta", col="red")
boxplot(py, ylab="PM2.5(??g/m³)", xlab ="Caminar", col="green")
boxplot(miy, ylab="PM2.5(??g/m³)", xlab ="T.P Masivo", col="blue")

#unico diagrama de cajas
boxplot(baseRb$Column9~baseRb$Column6, ylab="PM2.5(µg/m³)",  xlab ="Modos", 
        col=c("red", "green", "blue", "orange", "purple"), lty = c(1,1,1,2,2), cex=0.8)

#anova de un solo factor
anova(lm(baseRb$Column9~baseRb$Column6))
ano= aov(baseRb$Column9~baseRb$Column6)
#prueba de Tukey
posthoc <- TukeyHSD(x=ano, conf.level=0.95)
posthoc
plot(ano)
