#==================================#
# ------ Hello to learning R ------#
#==================================#
################# Note Reference ######################
# https://www.tutorialspoint.com/r/r_basic_syntax.htm #
# #    https://www.w3schools.com/r/r_for_loop.asp     #
#######################################################

# ---------------------------------#
# break
# next

# ---------------------------------#
# -- if --
a = 10
b = 30

if (a < b & a != 0 & b != 0){
    print("b is greater.")
}else if (a == b | a == 0 | b == 0){
    print("they are the same. Oe either a/b is 0")
}else{
    print("a is greater.")
}

# -- while --
i = 0
while (i < 6) {
    print(i)
    i = i + 1

    if (i == 1){
        next
    }

    if (i == 3){
        break
    }
}

# -- for --
for (x in 1:10) {
    print(x)
}
'''1 2 3 4 5 6 7 8 9 10'''

fruits = list("apple", "banana", "cherry")

for (x in fruits) {
    print(x)
}


# -- Function --
hello_function = function(name = "Zoe"){
    # joining strings
    paste("Hey" , name, ", hello!")

    return ("I am Zoe")
}


