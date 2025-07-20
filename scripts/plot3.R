library(ggplot2)
library(dplyr)

png("./outputs/plot_3.png", width = 480, height = 480)

subset_maryland <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year, type) %>%
  summarise(total_emissions = sum(Emissions), .groups = "drop")

ggplot(subset_maryland, aes(x = year, y =total_emissions, color = type)) + geom_line() + facet_wrap(. ~ type) + labs(title = "Total Emissions", y = "Total Emissions in tons", x= "year")


dev.off()