# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")


# -----------------------------
# Central Tendency
# -----------------------------

mean_purchase <- mean(data$Purchase_Amount)
median_purchase <- median(data$Purchase_Amount)

print(mean_purchase)
print(median_purchase)


# -----------------------------
# Dispersion
# -----------------------------

print(range(data$Purchase_Amount))
print(var(data$Purchase_Amount))
print(sd(data$Purchase_Amount))
print(IQR(data$Purchase_Amount))


# -----------------------------
# Bivariate Analysis
# -----------------------------

correlation <- cor(data$Monthly_Income,
                   data$Purchase_Amount)

print(correlation)


plot(data$Monthly_Income,
     data$Purchase_Amount,
     main="Income vs Purchase",
     xlab="Monthly Income",
     ylab="Purchase Amount")


# -----------------------------
# T-Test
# -----------------------------

t_test <- t.test(Purchase_Amount ~ Gender,
                 data=data)

print(t_test)


# -----------------------------
# ANOVA
# -----------------------------

anova_test <- aov(Customer_Rating ~ Store_Type,
                  data=data)

print(summary(anova_test))


# -----------------------------
# Chi-Square
# -----------------------------

table1 <- table(data$Membership_Status,
                data$Product_Category)

chi_test <- chisq.test(table1)

print(chi_test)


# -----------------------------
# Final Customer Analysis
# -----------------------------

print("Average Purchase by Membership")
print(aggregate(Purchase_Amount ~ Membership_Status,
                data=data,
                mean))

print("Average Rating by Store Type")
print(aggregate(Customer_Rating ~ Store_Type,
                data=data,
                mean))

print("Average Purchase by Product Category")
print(aggregate(Purchase_Amount ~ Product_Category,
                data=data,
                mean))
