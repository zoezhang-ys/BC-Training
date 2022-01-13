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
