# Read datasets
student <- read.csv("StudentDetails.csv")
company <- read.csv("CompanyDetails.csv")
salary <- read.csv("SalaryDetails.csv")

# Merge student and salary details
data1 <- merge(student,
               salary,
               by="StudentID")

# Merge company details
placement <- merge(data1,
                   company,
                   by="CompanyID")

print(placement)

# Department-wise placement percentage
dept_place <- aggregate(Placed ~ Department,
                        data=placement,
                        mean)

dept_place$Placement_Percentage <-
dept_place$Placed * 100

print(dept_place)

# Company with highest average package
company_package <- aggregate(Package ~ CompanyName,
                             data=placement,
                             mean)

highest_package <- company_package[
which.max(company_package$Package),]

print(highest_package)

# Save report
write.csv(placement,
          "Placement_Report.csv",
          row.names=FALSE)
