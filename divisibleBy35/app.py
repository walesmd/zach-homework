#!/usr/bin/which python3

# run this as
# python3 ./app.py 1 3

# import the library here that we'll use later
import sys

# python doesn't have types
# though in python 3.x you can use them... kinda confusing from the outside
# but doing so would change the method signature into this:
#
#       def twoint35(one int, two int):
#
# we went without
def nums_between3_5(one, two):
    # force to int
    # but throw an exception if the int() function cannot accomplish that
    try:
        one=int(one)
        two=int(two)
    except ValueError:
        # f-string formatting as below was introduced in python 3.6
        # there are a couple different ways to do the same thing. 
        # This is another way that's a little closer to the older python style:
        #
        # print(f"Please enter integers. You entered %d and %d" % (one, two))
        #
        # but we're using this one. Other than the f part, it is clearer
        print(f"Please enter integers. You entered {one} and {two}")

    # create our counter vars
    div3=0
    div5=0

    # swap one and two so we can count later
    if one > two:
        one, two = two, one

    # range(start, end, count) function takes params and is not inclusive of the end
    # hence the +1
    for i in range(one, two+1):
        if i % 3 == 0:
            print(f"{i} is divisible by 3")
            div3 +=1
        if i % 5 == 0:
            print(f"{i} is divisible by 5")
            div5 +=1


    print(f"Total numbers between {one} and {two} divisible by 3 is: {div3}")
    print(f"Total numbers between {one} and {two} divisible by 5 is: {div5}")

if __name__ == "__main__":

    # read our input
    # we expect 2 input values, if we don't get them, exit
    # sys.argv[0] is the name of the script so it's TWO more values after that
    if len(sys.argv) != 3:
        raise ValueError("Expected two int values as input")
    # then call the function
    nums_between3_5(sys.argv[1], sys.argv[2])
