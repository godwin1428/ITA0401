# Read dataset
cricket <- read.csv("Cricket.csv")

# Players with strike rate above 140
high_strike <- subset(cricket,
                      StrikeRate > 140)

print(high_strike)

# Average runs venue-wise
venue_average <- aggregate(Runs ~ Venue,
                           data=cricket,
                           mean)

print(venue_average)

# Export filtered data
write.csv(high_strike,
          "High_Strike_Rate.csv",
          row.names=FALSE)
