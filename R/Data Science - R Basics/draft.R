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
