# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Display Gender wise Average Purchase
aggregate(Purchase_Amount ~ Gender,
          data=data,
          mean)

# T-Test
t_test_result <- t.test(Purchase_Amount ~ Gender,
                        data=data)

print(t_test_result)
