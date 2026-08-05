# Read datasets
book <- read.csv("BookDetails.csv")
borrower <- read.csv("BorrowerDetails.csv")
issue <- read.csv("IssueDetails.csv")

# Merge issue and book details
data1 <- merge(issue,
               book,
               by="BookID")

# Merge borrower details
library_data <- merge(data1,
                      borrower,
                      by="BorrowerID")

print(library_data)

# Books issued more than 5 times
issue_count <- aggregate(BookID ~ BookName,
                         data=library_data,
                         length)

frequent_books <- subset(issue_count,
                         BookID > 5)

print(frequent_books)

# Find overdue books
overdue <- subset(library_data,
                  ReturnDate > DueDate)

print(overdue)

# Save report
write.csv(library_data,
          "Library_Report.csv",
          row.names=FALSE)
