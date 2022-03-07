### generate n coin flips each habing prob p and plot
p <- 0.3
n <- 1000
k<- 1000 ### k flips
x <- rbinom(n,k,p) ### n experiments, each with one coin flip
p.empirical <- cumsum(x) / (1:n) ### cumsum computes the cumulative sum
par(mfrow=c(2,2)) ### put 4 plots per page
plot(1:n,p.empirical,type='l',lwd=3,xlab='number of coin flips',ylab='',ylim=c(0,1))
lines(1:n,rep(p,n),lty=3,col=2,lwd=3) ## add the true value of p
### To simulate 1 experiment with k flips
X <- rbinom(1,k,p)  ### sum of k flips
###
nsim <- 1000 
output <- rbinom(nsim,k,p) 
hist(output) ### draw a histogram of the output
plot(table(output)) ### another way to plot it 
print(mean(output)) 
print(k*p)
