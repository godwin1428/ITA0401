# Read files
patient <- read.csv("PatientDetails.csv")
treatment <- read.csv("TreatmentDetails.csv")

# Merge datasets
hospital <- merge(patient,
                  treatment,
                  by="PatientID")

print(hospital)

# Count patient visits
visit_count <- aggregate(PatientID ~ PatientID,
                         data=hospital,
                         length)

print(visit_count)

# Patients visited more than twice
frequent <- subset(visit_count,
                   PatientID > 2)

print(frequent)

# Save report
write.csv(hospital,
          "Hospital_Report.csv",
          row.names=FALSE)
