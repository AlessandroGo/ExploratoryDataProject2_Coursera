png("./outputs/plot_4.png", width = 480, height = 480)

coal_combustion_scc <- SCC %>%
  filter(grepl("comb", EI.Sector, ignore.case = TRUE) &
           grepl("coal", EI.Sector, ignore.case = TRUE))

coal_filtering <- subset(NEI, SCC %in% coal_combustion_scc$SCC)

coal_filtering_sum_by_year <- aggregate(Emissions ~ year, data = coal_filtering, sum)

plot(coal_filtering_sum_by_year$year, coal_filtering_sum_by_year$Emissions / 1e6, col = "magenta", type = "b", xlab="Year",ylab = "Total Emsisions (millions tons)", pch = 4, main = "Total Emissions for Coal Combustion")

dev.off()