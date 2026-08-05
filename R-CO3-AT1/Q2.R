# Read files
employee <- read.csv("Employee.csv")
salary <- read.csv("Salary.csv")

# Merge datasets
emp_data <- merge(employee,
                  salary,
                  by="EmpID")

# Calculate Gross Salary
emp_data$GrossSalary <- emp_data$BasicPay +
                        emp_data$Allowance

print(emp_data)

# Department with highest average salary
dept_salary <- aggregate(GrossSalary ~ Department,
                         data=emp_data,
                         mean)

print(dept_salary)

highest <- dept_salary[
which.max(dept_salary$GrossSalary),]

print(highest)

# Employees earning above 60000
high_salary <- subset(emp_data,
                      GrossSalary > 60000)

print(high_salary)
