png("./outputs/plot_6.png", width = 480, height = 480)

# Checking for motor vehicle Id assume this question is for normal cars on the road
motor_vehicle_scc <- SCC %>%
  filter(grepl("on-road", EI.Sector, ignore.case = TRUE) & 
           grepl("vehicle", Short.Name, ignore.case = TRUE))

vehicle_filtering_baltimore_total_by_year <- NEI %>%
  filter(SCC %in% motor_vehicle_ssc$SCC & fips %in% c("24510", "06037")) %>%
  group_by(year, fips) %>%
  summarise(total_emissions = sum(Emissions), .groups = "drop")

# Note that ggplot it's easier to have correct metadata so have correct labels in data frame 
vehicle_filtering_baltimore_total_by_year$fips <- factor(vehicle_filtering_baltimore_total_by_year$fips,
                                                         levels = c("24510", "06037"),
                                                         labels = c("Baltimore", "Los Angeles"))


ggplot(vehicle_filtering_baltimore_total_by_year, aes(x=year, y = total_emissions)) + 
  geom_line(color = "green") + 
  geom_point(size = 4) +
  facet_grid(. ~ fips) +
  labs(title = "Total Emissions for Vehicles in Baltimore", x = "Year", y = "Total Emissions (tons)") + 
  theme_minimal()

dev.off()