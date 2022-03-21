library(dslabs)
data("murders")

# the type of the object
print(class(murders))

# the structure of the object
# state abb region population total
print(str("murders"))

# get the names of the columns
print(names(murders))

# the first 6 line 
print(head(murders))

# select a column
print(murders$population)
pop <- murders$population
length(pop)

print(class(levels(murders$region)))


var <- list(1, 2, 3) #1 2 3 4 5 6 7 8 9 10
print(var)
var = append(var, "new")
print(var)
