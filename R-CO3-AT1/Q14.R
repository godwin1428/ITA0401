# Read datasets
customer <- read.csv("Customer.csv")
order <- read.csv("Order.csv")
delivery <- read.csv("Delivery.csv")

# Merge customer and order
data1 <- merge(customer,
               order,
               by="CustomerID")

# Merge delivery details
delivery_data <- merge(data1,
                       delivery,
                       by="OrderID")

print(delivery_data)

# Calculate delivery time
delivery_data$DeliveryTime <-
as.Date(delivery_data$DeliveryDate) -
as.Date(delivery_data$OrderDate)

# Average delivery time city-wise
city_delivery <- aggregate(DeliveryTime ~ City,
                           data=delivery_data,
                           mean)

print(city_delivery)

# Delayed deliveries
delayed <- subset(delivery_data,
                  DeliveryTime > 5)

print(delayed)

# Export report
write.csv(delivery_data,
          "Delivery_Report.csv",
          row.names=FALSE)
