# LOAD DATASETS
library(datasets)
# SHOW THE FIRST FEW ROWS
print(head(iris))
# PLOT THE 'SPECIES'
plot(iris$Species)

length(iris)


plot(iris$Petal.Length, iris$Petal.Width,
  col = "#0047cc", 
  pch = 10, # point character
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width")


plot(sin, 0, 2 * pi)
plot(sin, 0, 2 * pi,
  col = "#cc0000",
  lwd = 5,
  main = "Sin graph",
  xlab = "x",
  ylab = "y")

plot(exp, 1, 5)
plot(dnorm, -3, +3)

# Bar chart
head(mtcars)

cyl_sum <- table(mtcars$cyl)  # Create table
barplot(cyl_sum)              # Bar chart
plot(cyl_sum)   

plot(mtcars$wt, mtcars$mpg,
  pch = 19,         # Solid circle
  cex = 1.5,        # Make 150% size
  col = "#cc0000",  # Red
  main = "MPG as a Function of Weight of Cars",
  xlab = "Weight (in 1000 pounds)",
  ylab = "MPG")


hist(iris$Sepal.Length)
curve(dnorm(x, mean = mean(iris$Sepal.Length), sd = sd(iris$Sepal.Length)),
      col = "#cf7d20",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph

hist(iris$Sepal.Width)
curve(dnorm(x, mean = mean(iris$Sepal.Width), 
            sd = sd(iris$Sepal.Width)),
      col = "#cf7d20",
      lwd = 2,
      add = TRUE)

install.packages("rio")
library(rio)

rio_csv <- import("C:\\Users\\zoezhang\\Downloads\\CourseFiles-20220406T131646Z-001\\CourseFiles\\ImportingData_Datasets\\mbb.xlsx")
head(rio_csv)
