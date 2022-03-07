# number of flips
num_flips <- 1000 # number of flips
set.seed(1257) # random seed generator
# flips simulation
coin <- c('heads', 'tails') # combine function
flips <- sample(coin, size = num_flips, replace = TRUE, prob = c(0.3, 0.7))
heads_freq <- cumsum(flips == 'heads') / 1:num_flips

plot(heads_freq,      # vector
     type = 'l',      # line type
     lwd = 2,         # width of line
     col = 'tomato',  # color of line
     las = 1,         # orientation of tick-mark labels
     ylim = c(0, 1),  # range of y-axis
     xlab = "number of tosses",    # x-axis label
     ylab = "relative frequency")  # y-axis label
abline(h = 0.3, col = 'gray50')
