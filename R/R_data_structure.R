################# Note Reference ######################
# https://www.tutorialspoint.com/r/r_basic_syntax.htm #
# #    https://www.w3schools.com/r/r_for_loop.asp     #
#######################################################

# ---------------------------------#

# List
# Multiple data type allowed
my_list = list(c(2,5,6), 2L, TRUE)
thislist = list("apple", "banana", "cherry", "kiwi", "melon", "mango")

# list length
length(thislist)

# adding element
append(thislist, "orange")
append(thislist, "orange", after = 2)

# check if item exist, T/F
"apple" %in% thislist

# remove the item 2, create newlist
newlist = thislist[-2]

# Range selection - start end included
(thislist)[2:5]

# Joining 2+ lists, save as another list
total_list = c(my_list, thislist)

# ---------------------------------#

# Matrix - 2D
# ↓↓↓, by default
M = matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3)
print(M)
'''
     [,1] [,2] [,3]
[1,] "a"  "b"  "b" 
[2,] "a"  "c"  "a" 
'''

M = matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
# →→→
'''
     [,1] [,2] [,3]
[1,] "a"  "a"  "b" 
[2,] "c"  "b"  "a"
'''

# Accessing [row, col]
M[1,3] #b

M = matrix(c('a','b','a','c','a','b','c','b','a'), nrow = 3, ncol = 3)
'''
     [,1] [,2] [,3]
[1,] "a"  "c"  "c" 
[2,] "b"  "a"  "b" 
[3,] "a"  "b"  "a" 
'''
# Access rows c(rows,)
M[c(1,2), ]
'''
     [,1] [,2] [,3]
[1,] "a"  "c"  "c" 
[2,] "b"  "a"  "b" 
'''

# Access cols c(cols,)
M[, c(1,2)]

'''
     [,1] [,2]
[1,] "a"  "c" 
[2,] "b"  "a" 
[3,] "a"  "b" 
'''

# Crop accessing
M[c(1,2),c(1,2)]
'''
     [,1] [,2]
[1,] "a"  "c" 
[2,] "b"  "a" 
'''

# Adding cols - cbind(M, new_col) - column combine
new_M = cbind(M, c('a','c','a'))
'''
     [,1] [,2] [,3] [,4]
[1,] "a"  "c"  "c"  "a" 
[2,] "b"  "a"  "b"  "c" 
[3,] "a"  "b"  "a"  "a" 
'''

# Adding rows = rbind(M, new_row) = row combine
new_M = rbind(M, c('a','c','a'))
'''
     [,1] [,2] [,3]
[1,] "a"  "c"  "c" 
[2,] "b"  "a"  "b" 
[3,] "a"  "b"  "a" 
[4,] "a"  "c"  "a" 
'''

#Remove the first row and the first column
M = M[-c(1), -c(1)]

# Check if an Item Exists
'a' %in% thismatrix

# Dimention
dim(M) # row col
length(M) # number of elements (row*col)

# Loop through
for (rows in 1:nrow(M)) {
    for (columns in 1:ncol(M)) {
        print(M[rows, columns])
    }
}

# Combine
# Combine matrices
Matrix1 = matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
'''
     [,1]     [,2]    
[1,] "apple"  "cherry"
[2,] "banana" "grape" 
'''

Matrix2 = matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
'''
     [,1]     [,2]        
[1,] "orange" "pineapple" 
[2,] "mango"  "watermelon"
'''

# Adding it as a rows
Matrix_Combined = rbind(Matrix1, Matrix2)
'''
     [,1]     [,2]        
[1,] "apple"  "cherry"    
[2,] "banana" "grape"     
[3,] "orange" "pineapple" 
[4,] "mango"  "watermelon"
'''

# Adding it as a columns
Matrix_Combined = cbind(Matrix1, Matrix2)
'''
     [,1]     [,2]     [,3]     [,4]        
[1,] "apple"  "cherry" "orange" "pineapple" 
[2,] "banana" "grape"  "mango"  "watermelon"
'''


# ---------------------------------#

# Array - 3D
a = array(c(1:24), dim = c(4,3,2))
print(a)
'''
, , 1
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4    8   12

, , 2
     [,1] [,2] [,3]
[1,]   13   17   21
[2,]   14   18   22
[3,]   15   19   23
[4,]   16   20   24
'''

# access, dim and len the same as M

# Loop
for (x in a){
    print(x)
}

# ---------------------------------#
# Factor - getting the NOT REPEATing item
# can also set levels by: ", levels = c(..) "
my_factor = factor(c(2,3,1,1,3,1,6,3,4,5,1,4))
'''
 [1] 2 3 1 1 3 1 6 3 4 5 1 4
Levels: 1 2 3 4 5 6
'''

# print level
levels(my_factor)

# Changing accessing length no diff

# ---------------------------------#
# Data Frame

my_table = data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
'''
  Training Pulse Duration
1 Strength   100       60
2  Stamina   150       30
3    Other   120       45
'''

