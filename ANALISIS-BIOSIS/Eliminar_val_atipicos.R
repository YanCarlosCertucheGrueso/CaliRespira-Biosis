###################################
## Eliminación de Datos atípicos ##
###################################


caminar1 <- ra_caminar_dh_m_1$Column9
moto1 <- med4$Column9
publico1 <- ra_recre_dh_n_1$Column9
cicla1 <- med2$Column9

remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}
sinAtipicosCaminar<-remove_outliers(caminar1)
sinAtipicosMoto <- remove_outliers(moto1)
sinAtipicosPublico <-remove_outliers(publico1)
sinAtipicosCicla <- remove_outliers(cicla1)
boxplot(sinAtipicosCaminar, ylab="PM2.5(??g/m³)", xlab ="Peaton", col="red")

plot(ra_caminar_dh_m_1$Column1, sinAtipicosCaminar, type = "l", pch=1)
lines(med4$Column1, sinAtipicosMoto, type = "l",  col="blue")
