
mvt = read.csv("mvtWeek1.csv")
str(mvt)
mvt$ID[which.max(mvt$ID)]
mvt$Beat[which.min(mvt$Beat)]
nrow(subset(mvt, Arrest == TRUE))
nrow(subset(mvt, LocationDescription == "ALLEY"))