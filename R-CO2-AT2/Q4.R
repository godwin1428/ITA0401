# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Scatter Plot
plot(data$Monthly_Income,
     data$Purchase_Amount,
     main="Monthly Income vs Purchase Amount",
     xlab="Monthly Income",
     ylab="Purchase Amount")

# Correlation
correlation <- cor(data$Monthly_Income,
                   data$Purchase_Amount,
                   use="complete.obs")

print(paste("Correlation =", correlation))

# Linear Model
model <- lm(Purchase_Amount ~ Monthly_Income,
            data=data)

summary(model)
