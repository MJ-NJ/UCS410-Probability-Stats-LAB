#Q1
#(i)
install.packages("pracma")
library("pracma")
f<-function(x,y){
  2*(2*x+3*y)/5
}
I<-integral2(f, 0, 1, 0 , 1)
I$Q
 
#(ii)
f1<-function(y){
  f(1,y)
}
I1<-integral(f1,0,1)
I1
 
#(iii)
f2<-function(x){
  f(x,0)
}
I2<-integral(f2,0,1)
I2

#(iv)
f3<-function(x,y){
  x*y*f(x,y)
}
I3<-integral2(f3,0,1,0,1)
I3$Q

#Q2
#(i)
f1<-function(x,y){
  (x+y)/30
}
x<-0:3
y<-0:2
M<-matrix(c(f1(0,0:2),f1(1,0:2),f1(2,0:2),f1(3,0:2)),nrow=4,ncol=3,byrow =T)
M
#(ii)
sum(M,x,y)
#(iii)
a1<-apply(M,1,sum)
a1
#(iv)
a2<-apply(M,2,sum)
#(v)
M[1,2]/a2[2]
#(vi)
f4<-function(x,y){
  x*f1(x,y)
}
Ex<-sum(x*a1)
Ey<-sum(y*a2)
vx<-sum(((x-Ex)^2)*a1)
vy<-sum(((y-Ey)^2)*a2)
Exy<-sum(outer(x,y)*M)
cov<-(Exy-Ex*Ey)
corr<-(cov)/(vx*vy)^(0.5)