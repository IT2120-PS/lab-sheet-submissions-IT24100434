setwd("C:\\Users\\IT24100434\\Desktop\\IT24100434")

#Exercise 1
#Q1
# X~ Binomial(n=50,p=085)

#Q2
# Binomial distribution
n <- 50
p <- 0.85

# Probability at least 47 students passed
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
prob_at_least_47

#Exercise

#Q1
#X is the number of customer calls received in one hour.

#Q2
#X~Poisson(λ=12)

#Q3
# Poisson distribution
lambda <- 12

# Probability of exactly 15 calls
prob_exact_15 <- dpois(15, lambda)
prob_exact_15

