################# Note Reference ######################
# https://www.tutorialspoint.com/r/r_basic_syntax.htm #
# #    https://www.w3schools.com/r/r_for_loop.asp     #
#######################################################

#==================================#
# ------ Hello to learning R ------#
#==================================#

"And this is my multi-line comment."
# Note that R is CASE SENSITIVE!!

# -- Hello World --#
hello_string <- "Hello, World!"
print(hello_string)

# ---------------------------------#
# ---------------------------------#

# ----------- Operators -----------#

# Arithmetic 
'''
+-*/
^ ** exponential
%% module
%/% int division
'''

# Comparison 
'''
==  !=  >  <  >=  <=
'''

# Logical
'''
&  |  element comparison - AND
&&  ||  statement comparison - OR
! NOT
'''

# Others
'''
:  create a seriers of number in sequence
ie. 1:10

%in% if an element belongs to a vector
ie x %in% y

%*% matrix multiplication
M1 %*% M2
'''

# ---------------------------------#
# -------- Basic data type --------#
# value assignment "<-", "=", "->"
# assign to global var "->>" "<<-"
# ---- NULL Type
my_var = NULL
print(my_var)

# ---- Logical
my_var = TRUE
my_var = FALSE

# ---- Numeric
my_var = 3
my_var = 2.99

# ---- Integer
my_var = 5L
my_var = 369L

# ---- Complex
my_var = 2 + 3i

# Converting types
# as.numeric()
# as.integer()
# as.complex()

x = 1L
y = 2
z = 3+2i

# convert to numeric:
a = as.numeric(x)

# convert to integer:
b = as.integer(y)

# convert to int from cplx, 
# imaginary part discarded
c = as.integer(z)

# convert to complex is 
# adding a 0i at the end


# ---- Character - string
# \\ Backslash; \n Newline; \t tab
# \r carriage return; \b backspace
my_var = 'This is a string'
my_var = "This is a multiline 
            string"
print(my_var)
'''
"This is a multiline \n            string"
'''
my_var = 'Hello,
World.
'
cat(my_var)
'''Hello,
World.'''

# get string length
nchar(my_var)

# check if in a string - TRUE/FALSE
grepl("H", str) #true
grepl("Hello", str) #true
grepl("Hi", str) #false

# combining string
str1 = "Hello,"
str2 = "world."
paste(str1, str2)

# Raw - saving char as HEX
# 48 65 6c 6c 6f
my_var = charToRaw("Hello")

# ---------------------------------#
# -------- Data Structures --------#
# ---------------------------------#
# General functions
data_var = NULL



# -- Vector - combining elements
# Only ONE data type is allowed
my_vec = c('a', 'b', 'c')
print(my_vec)

numbers = 1:10
'''1 2 3 4 5 6 7 8 9 10'''

numbers = 1.5:6.3
'''1.5 2.5 3.5 4.5 5.5'''

numbers = 1.5:6.5
'''1.5 2.5.3.5 4.5 5.5 6.5'''

numbers = seq(from = 0, to = 100, by = 20)
'''0 20 40 60 80 100'''

# length of vector
length(numbers)

# sort vector - can alphabetically and numerically
sort(numbers)

# access single element - start from 1
numbers[1]

# access multiple element - use c()
numbers[c(1,3)]

# negative accessing - use c()
numbers[c(-1)]

# changing an item
numbers[1] = 0

# repeat vector - rep()
rep_vec = rep(c(1,2,3), each = 3)
'''1 1 1 2 2 2 3 3 3'''

rep_vec = rep(c(1,2,3), times = 3)
'''1 2 3 1 2 3 1 2 3'''

rep_vec = rep(c(1,2,3), times = c(5,2,1))
'''1 1 1 1 1 2 2 3'''

# ---------------------------------#
# ---------------------------------#

# List
# Multiple data type allowed
my_list = list(c(2,5,6), 2L, TRUE)
thislist = list("apple", "banana", "cherry")

# adding element
append(thislist, "orange")
append(thislist, "orange", after = 2)

# check if item exist, T/F
"apple" %in% thislist

# remove the item 2, create newlist
newlist = thislist[-2]

# Range selection



# ---------------------------------#

# Matrix - 2D
M = matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
# →→→
'''
     [,1] [,2] [,3]
[1,] "a"  "a"  "b" 
[2,] "c"  "b"  "a"
'''

# ↓↓↓
M = matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = FALSE)
print(M)
'''
     [,1] [,2] [,3]
[1,] "a"  "b"  "b" 
[2,] "a"  "c"  "a" 
'''

# ---------------------------------#

# Array
a = array(c('green','yellow', 'blue','pink'),dim = c(3,3,2))
print(a)
'''
, , 1

     [,1]     [,2]     [,3]   
[1,] "green"  "pink"   "blue" 
[2,] "yellow" "green"  "pink" 
[3,] "blue"   "yellow" "green"

, , 2

     [,1]     [,2]     [,3]    
[1,] "yellow" "green"  "pink"  
[2,] "blue"   "yellow" "green" 
[3,] "pink"   "blue"   "yellow"
'''

# ---------------------------------#
# Factor

# ---------------------------------#

# Data Frame

# ---------------------------------#

# Checking data type
print(class(my_var))