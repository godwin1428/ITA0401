library(reshape2)

# Read dataset
weather <- read.csv("Weather.csv")

# Convert wide format to long format
weather_long <- melt(weather,
                     id.vars="Date",
                     variable.name="City",
                     value.name="Temperature")

print(weather_long)

# Average temperature city-wise
city_average <- aggregate(Temperature ~ City,
                          data=weather_long,
                          mean)

print(city_average)

# Convert back to wide format
weather_wide <- dcast(weather_long,
                      Date ~ City,
                      value.var="Temperature")

print(weather_wide)

# Save output
write.csv(weather_wide,
          "Weather_Report.csv",
          row.names=FALSE)
