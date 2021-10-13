library(rvest)

data <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")

tables <- data %>% html_table(fill = TRUE)

tables1 <- tables[[2]]

setwd("D:/YEAR 3/PROGRAMMING FOR DATA SCIENCE/Practice Assignments/st_2195_assignment_2/r_csv")

write.csv(tables1, "cars.csv")

tables2 <- read.csv("cars.csv")
data.frame(tables2)