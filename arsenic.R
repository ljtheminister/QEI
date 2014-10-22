library(ggplot2)

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

# EDUCATION
plot(table(educ, switch))
cor(educ, switch)
# education is continuous variable, regress educ and educ^2

# DISTANCE
plot(jitter(dist), jitter(switch))
