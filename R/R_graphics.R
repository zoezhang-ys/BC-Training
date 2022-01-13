################# Note Reference ######################
# https://www.tutorialspoint.com/r/r_basic_syntax.htm #
# #    https://www.w3schools.com/r/r_for_loop.asp     #
#######################################################

# Plot
x = c(1, 2, 3, 4, 5)
y = c(3, 7, 8, 9, 12)

plot(x, y)

plot(1:10)

# plot line
plot(1:10, type="l")

# labeling
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")

# others - color, point_size, point_shape (1:25)
plot(1:10, col="red", cex=2, pch=25)

# plot line others = color, line width, line style
plot(1:10, type="l", col="red", lwd=2, lty=3)

# multiple line in one graph - lines()
line1 = c(1,2,3,4,5,10) #y
line2 = c(2,5,7,8,9,10) #y

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

# multiple points in one graph - points()
x1 = c(5,7,8,7,2,2,9,)
y1 = c(99,86,87,88,87,94,78)

x2 = c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 = c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="scatter", xlab="x_val", ylab="y_val", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

# pie chart
x = c(10,20,30,40)
mylabel = c("Apples", "Bananas", "Cherries", "Dates")
colors = c("blue", "yellow", "green", "black")
pie(x, label = mylabel, main = "Fruits", col = colors)
# legend - bottomright, bottom, bottomleft, left, topleft, top, topright, right, center
legend("bottomright", mylabel, fill = colors)

# bar
# x-axis values
x = c("A", "B", "C", "D")
# y-axis values
y = c(2, 4, 6, 8)
# color, density, width. horizontal graph or not
barplot(y, names.arg = x, col = "red", density = 10, width = c(1,2,3,4), horiz = TRUE)