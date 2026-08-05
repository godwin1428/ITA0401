# Read datasets
product <- read.csv("Product.csv")
stock <- read.csv("Stock.csv")
supplier <- read.csv("Supplier.csv")

# Merge product and stock details
data1 <- merge(product,
               stock,
               by="ProductID")

# Merge supplier details
inventory <- merge(data1,
                   supplier,
                   by="SupplierID")

print(inventory)

# Products with stock less than 20
low_stock <- subset(inventory,
                    Stock < 20)

print(low_stock)

# Calculate inventory value
inventory$InventoryValue <-
inventory$Stock * inventory$Price

# Supplier-wise inventory value
supplier_value <- aggregate(InventoryValue ~ SupplierName,
                            data=inventory,
                            sum)

print(supplier_value)

# Save report
write.csv(inventory,
          "Inventory_Report.csv",
          row.names=FALSE)
