set.seed(3)
lambda<-0.2
n<-40
simulated_means<-NULL
for(i in 1:1000){
  simulated_means<-c(simulated_means,sum(rexp(40,0.2))/n)
}
theoretical_mean<-1/lambda
theoretical_mean
simulated_mean<-mean(simulated_means)
simulated_mean

theoretical_sd<-(1/lambda)/sqrt(n)

simulated_sd<-sd(simulated_means)

theoretical_variance<-(theoretical_sd)^2
theoretical_variance
simulated_variance<-(simulated_sd)^2
simulated_variance

x <- seq(min(simulated_means), max(simulated_means),length=100)
y <- dnorm(x, mean =1/lambda, sd =(1/lambda)/sqrt(n))
hist(simulated_means,breaks=n,prob=T,col="grey",xlab = "Simulated Means",main="Sample Distribution of Simulated means",ylab="Density")
lines(x, y, pch=22, col="black", lty=1)
abline(v =theoretical_mean, col="red", lwd=3, lty=2)
abline(v =simulated_mean, col="blue", lwd=3, lty=2)