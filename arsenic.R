library(ggplot2)
library(reshape)

setwd('/Users/JMin/ML/QuaEra_Insights')
data <- read.table('arsenic_data.txt')
names(data)
attach(data)
table(switch)
hist(arsenic)
hist(dist)
table(assoc)
table(educ)
hist(educ)

## EXPLORATORY DATA ANALYSIS : 1 v 1 plots

# ASSOCIATION
plot(table(assoc, switch))

# ARSENIC
plot(jitter(arsenic), jitter(switch))
# overlay histogram plot of arsenic, switch

plot(jitter(arsenic), jitter(dist))

# EDUCATION
plot(table(educ, switch))
cor(educ, switch)
# education is continuous variable, regress educ and educ^2


# DISTANCE
plot(jitter(dist), jitter(switch))

data$arsenic_sq <- data$arsenic^2
data$dist_sq <- data$dist^2
data$educ_sq <- data$educ^2

plot(educ, dist)
plot(jitter(educ), jitter(assoc))


# Let us standard/normalize data
# run PCA on it and extract variance from the data, and maybe include squared variables too

## REGRESSION
logit <- glm(switch ~ arsenic + arsenic_sq + dist + dist_sq+ assoc + educ + educ_sq, family='binomial', data=data)

logit <- glm(switch ~ arsenic + dist + assoc + educ, family='binomial', data=data)
summary(logit)

