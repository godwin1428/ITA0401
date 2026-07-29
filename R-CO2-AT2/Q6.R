# Read Dataset
data <- read.csv("C:/Users/User/Downloads/Customer_Transactions.csv")

# Average Rating by Store Type
aggregate(Customer_Rating ~ Store_Type,
          data=data,
          mean)

# ANOVA Test
anova_result <- aov(Customer_Rating ~ Store_Type,
                    data=data)

# Display Result
summary(anova_result)

# Boxplot
boxplot(Customer_Rating ~ Store_Type,
        data=data,
        main="Customer Rating Across Store Types",
        xlab="Store Type",
        ylab="Customer Rating")
