png("./outputs/plot_5.png", width = 480, height = 480)

# Checking for motor vehicle Id assume this question is for normal cars on the road
motor_vehicle_scc <- SCC %>%
  filter(grepl("on-road", EI.Sector, ignore.case = TRUE) & 
           grepl("vehicle", Short.Name, ignore.case = TRUE))

vehicle_filtering_baltimore_total_by_year <- NEI %>%
  filter(SCC %in% motor_vehicle_ssc$SCC & fips == "24510") %>%
  group_by(year) %>%
  summarise(total_emissions = sum(Emissions), .groups = "drop")

ggplot(vehicle_filtering_baltimore_total_by_year, aes(x=year, y = total_emissions)) + 
  geom_line(color = "green") + 
  geom_point(size = 4) +
  labs(title = "Total Emissions for Vehicles in Baltimore", x = "Year", y = "Total Emissions (tons)") + 
  theme_dark()

dev.off()