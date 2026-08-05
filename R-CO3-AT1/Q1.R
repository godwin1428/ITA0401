# Read CSV
student <- read.csv("Student.csv")

# Total and Average
student$Total <- student$Marks1 + student$Marks2 + student$Marks3
student$Average <- student$Total / 3

# Students above class average
class_avg <- mean(student$Average)
above_avg <- subset(student, Average > class_avg)
print(above_avg)

# Department-wise average
aggregate(Average ~ Department, data=student, mean)
