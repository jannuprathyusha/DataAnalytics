tapply(who$ChildMortality, who$Region, mean)
which.min(tapply(who$ChildMortality, who$Region, mean))
