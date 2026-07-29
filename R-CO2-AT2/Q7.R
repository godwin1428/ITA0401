# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Create Contingency Table
membership_product <- table(data$Membership_Status,
                            data$Product_Category)

print(membership_product)

# Chi-Square Test
chi_result <- chisq.test(membership_product)

print(chi_result)
