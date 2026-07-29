# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Average Purchase by Membership
purchase_segment <- aggregate(Purchase_Amount ~ Membership_Status,
                              data=data,
                              mean)

print(purchase_segment)

# Average Rating by Membership
rating_segment <- aggregate(Customer_Rating ~ Membership_Status,
                            data=data,
                            mean)

print(rating_segment)

# Purchase Distribution
boxplot(Purchase_Amount ~ Membership_Status,
        data=data,
        main="Purchase Amount by Membership",
        xlab="Membership Status",
        ylab="Purchase Amount")
