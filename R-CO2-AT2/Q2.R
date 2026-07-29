# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Range
purchase_range <- range(data$Purchase_Amount, na.rm = TRUE)

# Variance
purchase_variance <- var(data$Purchase_Amount, na.rm = TRUE)

# Standard Deviation
purchase_sd <- sd(data$Purchase_Amount, na.rm = TRUE)

# Interquartile Range
purchase_iqr <- IQR(data$Purchase_Amount, na.rm = TRUE)

print("Range:")
print(purchase_range)

print("Variance:")
print(purchase_variance)

print("Standard Deviation:")
print(purchase_sd)

print("IQR:")
print(purchase_iqr)
