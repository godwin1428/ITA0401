# Get all CSV files
files <- list.files(pattern="*.csv")

# Read and combine files
attendance <- do.call(rbind,
                      lapply(files, read.csv))

print(attendance)

# Calculate attendance percentage
attendance$Attendance_Percentage <-
(attendance$PresentDays /
 attendance$TotalDays) * 100

# Students below 75%
low_attendance <- subset(attendance,
                         Attendance_Percentage < 75)

print(low_attendance)

# Save result
write.csv(low_attendance,
          "Attendance_Report.csv",
          row.names=FALSE)
