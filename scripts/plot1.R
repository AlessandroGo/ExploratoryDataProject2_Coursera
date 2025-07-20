png("./outputs/plot_1.png", width = 480, height = 480)

subset_1999 <- subset(NEI, year == 1999)
subset_2002 <- subset(NEI, year == 2002)
subset_2005 <- subset(NEI, year == 2005)
subset_2008 <- subset(NEI, year == 2008)

total_emissions_by_year <- c(sum(subset_1999$Emissions),sum(subset_2002$Emissions),sum(subset_2005$Emissions),sum(subset_2008$Emissions))

plot(c(1999,2002,2005,2008), total_emissions_by_year / 1e6, xlab="Year",ylab = "Total PM2.5 Emissions (Millions of Tons)", main="Total Emissions By Year", type = "l")
points(c(1999,2002,2005,2008), total_emissions_by_year / 1e6, pch = 5, col = "red")
# Looks like decrease from 1999 to 2008

dev.off()