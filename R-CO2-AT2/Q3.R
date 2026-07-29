# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Summary Statistics
summary(data$Customer_Rating)

# Mean Rating based on Membership
rating_mean <- aggregate(Customer_Rating ~ Membership_Status,
                         data=data,
                         mean)

print(rating_mean)

# Boxplot
boxplot(Customer_Rating ~ Membership_Status,
        data=data,
        main="Customer Rating by Membership Status",
        xlab="Membership Status",
        ylab="Customer Rating")
