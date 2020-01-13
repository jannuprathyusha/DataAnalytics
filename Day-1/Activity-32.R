hist(mvt$Date, breaks=100)
boxplot(mvt$Date~mvt$Arrest)

#QUESTION 5

noOfArrests = nrow(subset(subset(mvt, Arrest == TRUE), Year == "2001"))
total = nrow(subset(mvt, Year == "2001"))
noOfArrests/total


#Question 6

noOfArrests = nrow(subset(subset(mvt, Arrest == TRUE), Year == "2007"))
total = nrow(subset(mvt, Year == "2007"))
noOfArrests/total

#QUESTION 7

noOfArrests = nrow(subset(subset(mvt, Arrest == TRUE), Year == "2012"))
total = nrow(subset(mvt, Year == "2012"))
noOfArrests/total
