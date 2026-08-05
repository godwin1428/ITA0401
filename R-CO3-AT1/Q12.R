library(reshape2)

# Read dataset
covid <- read.csv("Covid.csv")

# Convert to long format
covid_long <- melt(covid,
                   id.vars=c("State","Date"))

print(covid_long)

# Calculate state-wise recovery percentage
state_data <- aggregate(
cbind(ConfirmedCases,
      RecoveredCases,
      Deaths) ~ State,
data=covid,
sum)

state_data$Recovery_Percentage <-
(state_data$RecoveredCases /
 state_data$ConfirmedCases) * 100

print(state_data)

# Convert back to wide format
covid_wide <- dcast(covid_long,
                    State + Date ~ variable,
                    value.var="value")

print(covid_wide)

# Export result
write.csv(covid_wide,
          "Covid_Report.csv",
          row.names=FALSE)
