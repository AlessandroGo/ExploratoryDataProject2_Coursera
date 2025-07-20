png("./outputs/plot_2.png", width = 480, height = 480)

subset_maryland_baltimore <- subset(NEI, fips == "24510")
total_emissions_year_maryland <- aggregate(Emissions ~ year, data = subset_maryland_baltimore, sum)

plot(total_emissions_year_maryland$year, total_emissions_year_maryland$Emissions / 1e6, col = "purple", type = "b", xlab="Year",ylab = "Total Emsisions (millions tons)", pch = 4)


dev.off()