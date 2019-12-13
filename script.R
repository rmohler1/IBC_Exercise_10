#dynamic modeling 

#Nt=Nt+rNt(1-(Nt+Mt)/k)
#Mt=Mt=rMt(1-(Nt+Mt)/k)

#set initial  values and parameters
r = 0.1
k = 1e+06
N0 = 100

Fun1=function(r=.1,k=1e+06, N0=100){
#create vector to store Ns and create initial N
Ns=numeric(length=timesteps)
Ns[1]=N0

#simulate
for (t in 1:(timesteps-1)){
  Ns[t+1]=Ns[t]+r*Ns[t]*(1-(Ns[t]+M[t])/k)
  M[t+1]=r*M[t]*(1-(Ns[t]+M[t])/k)
}
}

#plot simulation
library(ggplot2)
sim=data.frame(time=1:length(Ns),N=Ns)
ggplot(data=sim, aes(x=time, y=N))+geom_line()

