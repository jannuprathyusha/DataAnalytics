CPS = read.csv("CPSData.csv")

#QUESTION 1

str(CPS)

#QUESTION 2

which.max(table(CPS$Industry))


#QUESTION 3

which.min(sort(table(CPS$State)))


#QUESTION 4

which.max(sort(table(CPS$State)))

#QUESTION 5

1- (nrow(subset(CPS, Citizenship == "Non-Citizen"))/nrow(CPS))

#QUESTION 6

table(CPS$Race,CPS$Hispanic)

#QUESTION 7

table(CPS$Race, CPS$Hispanic)

# QUESTION 8

summary(CPS)

# QUESTION 9

table(CPS$Region, is.na(CPS$Married))

table(CPS$Sex, is.na(CPS$Married))

table(CPS$Age, is.na(CPS$Married))

table(CPS$Citizenship, is.na(CPS$Married))

#QUESTION 10

table(CPS$State, is.na(CPS$MetroAreaCode))

#QUESTION 11

table(CPS$Region, is.na(CPS$MetroAreaCode))

#QUESTION 12, 13

tapply(is.na(CPS$MetroAreaCode), CPS$State, mean)
sort(tapply(is.na(CPS$MetroAreaCode), CPS$State, mean))

# QUESTION 14

str(MetroAreaMap)

# QUESTION 15

str(CountryMap)

# QUESTION 16, 17

summary(CPS)

# QUESTION 18

table(CPS$MetroArea)

# QUESTION 19

tapply(CPS$Hispanic, CPS$MetroArea, mean)
sort(tapply(CPS$Hispanic, CPS$MetroArea, mean))

# QUESTION 20

sort(tapply(CPS$Race == "Asian", CPS$MetroArea, mean))

# QUESTION 21

sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean, na.rm=TRUE))

# QUESTION 22

CPS = merge(CPS, CountryMap, by.x="CountryOfBirthCode", by.y="Code", all.x=TRUE)

# QUESTION 23

summary(CPS)

# QUESTION 24

sort(table(CPS$Country))

# QUESTION 25

table(CPS$MetroArea == "New York-Northern New Jersey-Long Island, NY-NJ-PA", CPS$Country != "United States")

# QUESTION 26

sort(tapply(CPS$Country == "India", CPS$MetroArea, sum, na.rm=TRUE))

# QUESTION 27

sort(tapply(CPS$Country == "Brazil", CPS$MetroArea, sum, na.rm=TRUE))

# QUESTION 28

sort(tapply(CPS$Country == "Somalia", CPS$MetroArea, sum, na.rm=TRUE))


