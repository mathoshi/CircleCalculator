#Created by Matsuru Hoshi
#Created on March 6, 2019
#This file will print , "Hello, World!", to the CMD

welcome = input("Welcome to the Circle Calculator 1000. Respond Ok if Ok: ")
diameter = int(input("What is the diameter? "))

import math

circumference = 2 * (math.pi * (diameter/2))
area = math.pi * (diameter/2) ** 2
print( "The circumference is " + str(circumference))
print( "The area is " + str(area))

end = input( "Thank you!")
