library(reshape2)

# Read dataset
movie <- read.csv("Movie.csv")

# Average rating by genre
genre_rating <- aggregate(ViewerRating ~ Genre,
                          data=movie,
                          mean)

print(genre_rating)

# Convert to long format
movie_long <- melt(movie,
                   id.vars=c("MovieName",
                             "Genre",
                             "Platform"))

print(movie_long)

# Convert back to wide format
movie_wide <- dcast(movie_long,
                    MovieName + Genre + Platform ~ variable,
                    value.var="value")

print(movie_wide)

# Export data
write.csv(movie_wide,
          "Movie_Report.csv",
          row.names=FALSE)
