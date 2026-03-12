X <- read.table("data/vermogensberekening_warmtepompen.csv",header=T,sep=",",dec=".")

trend10.2 <- X[X$pomp == "HPA-O 10.2 Trend HC 230",]
trend13.2 <- X[X$pomp == "HPA-O 13.2 Trend HC 400",]
plus10.2  <- X[X$pomp == "HPA-O 10.2 Plus HC 400",]


par(mfrow=c(2,2))


plot(max_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend10.2,col="green",ylim=c(0,14),xlim=c(-15,20),ylab="vermogen (kW)", main = "HPA-O 10.2 Trend HC 230")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend10.2,col="orange")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend10.2,col="red")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=trend10.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=trend10.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend10.2,col="red")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend10.2,col="orange")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend10.2,col="green")
abline(h=c(0,9,10))
abline(v=c(-7,20))
abline(b=-0.37,a=7.4)
abline(b=-0.335,a=6.7)

plot(max_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend13.2,col="green",ylim=c(0,14),xlim=c(-15,20),ylab="vermogen (kW)", main = "HPA-O 13.2 Trend HC 400")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend13.2,col="orange")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend13.2,col="red")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=trend13.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=trend13.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend13.2,col="red")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend13.2,col="orange")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend13.2,col="green")
abline(h=c(0,9,10))
abline(v=c(-7,20))
abline(b=-0.37,a=7.4)
abline(b=-0.335,a=6.7)




plot(max_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=plus10.2,col="green",ylim=c(0,14),xlim=c(-15,20),ylab="vermogen (kW)", main = "HPA-O 10.2 Plus HC 400")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=plus10.2,col="orange")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=plus10.2,col="red")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=plus10.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==65,data=plus10.2,col="darkred")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=plus10.2,col="red")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=plus10.2,col="orange")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=plus10.2,col="green")
abline(h=c(0,9,10))
abline(v=c(-7,20))
abline(b=-0.37,a=7.4)
abline(b=-0.335,a=6.7)


par(mfrow=c(1,1))
plot(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend10.2,lwd=3,col="blue",ylim=c(0,15),xlim=c(-15,20),ylab="vermogen (kW)", main = "Bovenlimiet voor W55 (W65), onderlimiet voor W35")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=plus10.2,lwd=3,col="purple")
lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==45,data=trend13.2,lwd=3,col="darkblue")

#lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend10.2,lwd=3,col="blue")
#lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=plus10.2,lwd=3,col="purple")
#lines(max_vermogen~T_buiten,type="l",subset=T_aanvoer==55,data=trend13.2,lwd=3,col="darkblue")

lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend10.2,lwd=3,col="blue")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=plus10.2,lwd=3,col="purple")
lines(min_vermogen~T_buiten,type="l",subset=T_aanvoer==35,data=trend13.2,lwd=3,col="darkblue")
abline(h=c(0,9,10))
abline(v=c(-7,20))
abline(b=-0.37,a=7.4)
abline(b=-0.335,a=6.7)
segments(x0=8.5,x1=8.5,y0=0,y1=3.83,col="darkblue")
segments(x0=9.4,x1=9.4,y0=0,y1=3.92,col="darkblue")
segments(x0=11,x1=11,y0=0,y1=3,col="blue")
segments(x0=11.75,x1=11.75,y0=0,y1=3.05,col="blue")
segments(x0=8.5,x1=11,y0=1.5,y1=1.5,lwd=3)
segments(x0=9.4,x1=11.75,y0=2.0,y1=2.0,lwd=3)
text(x=6,y=1.5,"~2.35° verschil",cex=0.75)
text(x=6,y=2,"~2.5° verschil",cex=0.75)
legend("bottomleft",legend=c("trend 10","plus 10","trend 13"),col=c("blue","purple","darkblue"),pch=16)

#locator(n=3)




# Bij -5°C ongeveer 17A (gerkend met COP 2.37)
# Bij 0°C: ongeveer 13A (gerekend met COP 2.5)
# Bij 5°C: ongeveer  7A (gerekend met COP 3)






