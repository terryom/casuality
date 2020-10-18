## testing out Emacs ESS on SSH X connection from Chromebook to ubuntu machine
## all because RStan installation runs out of memory on Crostini
## good to learn new things
library(data.table)
library(ggplot2)

data("lalonde", package="Matching") 

setDT(lalonde)

dat <- lalonde

dat


with(dat, plot(log(1+re78),log(1+re74)))
plot(log(1+dat$re75), log(1+dat$re74))

summary(
    lm(log(1+re78) ~ I(poly(age,2))  + educ + married + treat+ log(1+re75), data = dat))


summary(
    lm(re78 > 0 ~ age  + educ + married + treat + I(log(1+re75)),
       data = dat))

