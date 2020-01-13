# To read the csv files
IBM = read.csv("IBMStock.csv")
GE = read.csv("GEStock.csv")
CocaCola = read.csv("CocaColaStock.csv")
ProcterGamble = read.csv("ProcterGambleStock.csv")
Boeing = read.csv("BoeingStock.csv")

# To convert the date to the Date Object
IBM$Date = as.Date(IBM$Date, "%m / %d/ %y")
GE$Date = as.Date(GE$Date, "%m / %d/ %y")
CocaCola$Date = as.Date(CocaCola$Date, "%m / %d/ %y")
ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m / %d/ %y")
Boeing$Date = as.Date(Boeing$Date, "%m / %d/ %y")

#QUESTION 1,2, 3
# As the all the datasets have same number of observation. We shall find the str() and summary of one dataset
summary(IBM)
str(IBM)

#QUESTION 5

summary(GE)

#QUESTION 6

summary(CocaCola)


#QUESTION 7

summary(Boeing)

#QUESTION 8

sd(ProcterGamble)

#plot the stock prices of all the companies w.r.t years.

plot(coco$Date[301:432], coco$StockPrice[301:432], type="l ", col="red ", ylim=c(0,210))
lines(procter$Date, procter$StockPrice, type="l", col = "blue", ylim=c(0,210))
lines(GE$Date, GE$StockPrice, type="l", col = "green", ylim=c(0,210))
lines(IBM$Date, IBM$StockPrice, type="l", col = "purple", ylim=c(0,210))
lines(boeing$Date, boeing$StockPrice, type="l", col = "orange", ylim=c(0,210))

# To draw a vertical line at the given dates as mentioned by 'v' attribute
abline(v=as.Date(c("1997-09-01")), lwd=2) 
abline(v=as.Date(c("1997-11-01")), lwd=2) 

#To sort mean of IBM Stock price based on months
sort(tapply(IBM$StockPrice, months(IBM$Date), mean))
# To calculate the overall mean of IBM stockprice
mean(tapply(IBM$StockPrice, months(IBM$Date), mean))