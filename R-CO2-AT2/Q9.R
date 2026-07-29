# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Central Tendency
mean(data$Purchase_Amount)
median(data$Purchase_Amount)

# Dispersion
sd(data$Purchase_Amount)
var(data$Purchase_Amount)
IQR(data$Purchase_Amount)

# Income Relationship
cor(data$Monthly_Income,
    data$Purchase_Amount,
    use="complete.obs")

# Gender Analysis
gender_purchase <- aggregate(Purchase_Amount ~ Gender,
                              data=data,
                              mean)

print(gender_purchase)

# Membership Analysis
membership_purchase <- aggregate(Purchase_Amount ~ Membership_Status,
                                 data=data,
                                 mean)

print(membership_purchase)

# Product Category Analysis
category_purchase <- aggregate(Purchase_Amount ~ Product_Category,
                               data=data,
                               mean)

print(category_purchase)
