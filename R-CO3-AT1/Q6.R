# Read datasets
customer <- read.csv("Customer.csv")
order <- read.csv("Order.csv")

# Merge datasets
shopping <- merge(customer,
                  order,
                  by="CustomerID")

print(shopping)

# Customers with more than 3 purchases
purchase_count <- aggregate(OrderID ~ CustomerID,
                            data=shopping,
                            length)

frequent_customer <- subset(purchase_count,
                            OrderID > 3)

print(frequent_customer)

# Total purchase amount customer-wise
total_purchase <- aggregate(Amount ~ CustomerID,
                            data=shopping,
                            sum)

print(total_purchase)

# Save report
write.csv(total_purchase,
          "Shopping_Report.csv",
          row.names=FALSE)
