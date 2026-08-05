# Read files
customer <- read.csv("CustomerDetails.csv")
transaction <- read.csv("TransactionDetails.csv")

# Merge datasets
bank <- merge(customer,
              transaction,
              by="CustomerID")

print(bank)

# Total transaction amount
total_transaction <- aggregate(Amount ~ CustomerID,
                               data=bank,
                               sum)

print(total_transaction)

# Customers exceeding 100000
high_transaction <- subset(total_transaction,
                           Amount > 100000)

print(high_transaction)

# Export result
write.csv(high_transaction,
          "Bank_Report.csv",
          row.names=FALSE)
