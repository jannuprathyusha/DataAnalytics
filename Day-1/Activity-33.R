#QUESTION 1

sort(table(mvt$LocationDescription))
top5 = head(sort(table(mvt$LocationDescription), decreasing=TRUE), 6)

#QUESTION 2

hist(mvt$Date, breaks=100)

#QUESTION 3

which.max(table(subset(mvt, LocationDescription=="GAS STATION")$Weekday))

#QUESTION 4

which.min(table(subset(mvt, LocationDescription=="DRIVEWAY - RESIDENTIAL")$Weekday))


