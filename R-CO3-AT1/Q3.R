library(reshape2)

# Read dataset
sales <- read.csv("Sales.csv")

# Convert wide to long format
long_sales <- melt(sales,
                   id.vars="Product",
                   variable.name="Month",
                   value.name="Sales")

print(long_sales)

# Total sales per product
total_sales <- aggregate(Sales ~ Product,
                         data=long_sales,
                         sum)

print(total_sales)

# Convert back to wide format
wide_sales <- dcast(long_sales,
                    Product ~ Month,
                    value.var="Sales")

print(wide_sales)
