############################################
## EQUPO BIOSIS - ANÁLISIS *PRIMERA SEMANA*#
##       DÍA HÁBIL - MEDIO: PEATONAL       #
############################################

#############################
#IMPORTAR DATOS DE LAS RUTAS#
#############################
# RUTA A Juliana            #
# Ruta B Anderson           #
# RUTA C Yan                #
# RUTA D Andres             #
#############################

#arreglo de nombre de rutas

RutaA <- ra_caminar_dh_m_1
pm2.5ra <- RutaA$Column9[2:1522]
promedioPmRa=mean(pm2.5ra)

RutaB <- rb_caminar_dh_m_1
pm2.5rb <- RutaB$Column9[2:1128]
promedioPmRb=mean(pm2.5rb)

RutaC <-jueves_yan
pm2.5rc <- RutaC$Column9[2:959]
promedioPmRc=mean(pm2.5rc)

RutaD <-jueves_navia
pm2.5rd <- RutaD$Column9[2:1483]
promedioPmRd=mean(pm2.5rd)

x<-promediosHabil$Rutas
y<-promediosHabil$Promedio
# GRÁFICAS
dotchart(y, labels = factor(x), color=c("blue", "red","orange",  "green"),
xlab ="PM2.5 (??g/m³)", ylab = "Rutas ")
#barplot(height = promedios$Promedio, names.arg = promedios$Rutas, xlab = "Rutas",
#ylab = "Pm2.5 microgramos/m3",main="Promedio de PM2.5 vs Ruta. Medio : Peatonal - Día Hábil",
#col= rainbow(4), ylim =c(0,25), width = c(0.2, 0.2))

############################################
## EQUPO BIOSIS - ANÁLISIS *PRIMERA SEMANA*#
##       DÍA HÁBIL - MEDIO: PEATONAL       #
############################################

RutaA <-rutaJulia
pm2.5ra <- RutaA$Column9[2:1779]
promedioPmRa=mean(pm2.5ra)

RutaB <-rutaAnder
pm2.5rb <- RutaB$Column9[2:2018]
promedioPmRb=mean(pm2.5rb)

RutaC <-rutaYan_
pm2.5rc <- RutaC$Column9[2:1759]
promedioPmRc=mean(pm2.5rc)

RutaD <-rutaNavia
pm2.5rd <- RutaD$Column9[2:2089]
promedioPmRd=mean(pm2.5rd)

x<-promedios$Rutas
y<-promedios$Promedio

dotchart(y, labels = factor(x), color=c("blue", "red","orange",  "green"),
         xlab ="PM2.5 (??g/m³)", ylab = "Rutas ")
  
