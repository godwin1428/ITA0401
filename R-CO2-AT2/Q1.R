# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Display data
head(data)

# Mean
mean_purchase <- mean(data$Purchase_Amount, na.rm = TRUE)

# Median
median_purchase <- median(data$Purchase_Amount, na.rm = TRUE)

# Mode Function
mode_function <- function(x) {
  frequency <- table(x)
  mode_value <- names(frequency)[which.max(frequency)]
  return(mode_value)
}

# Mode
mode_purchase <- mode_function(data$Purchase_Amount)

print(paste("Mean =", mean_purchase))
print(paste("Median =", median_purchase))
print(paste("Mode =", mode_purchase))