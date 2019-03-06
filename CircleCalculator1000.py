#created by Matsuru Hoshi
#This file will print , "Hello, World!", to the CMD

welcome = input("Welcome to the Circle Calculator 1000. Respond Ok if Ok: ")
diameter = int(input("What is the diameter? "))

import math

circumference = 2 * (math.pi * (diameter/2))
area = math.pi * (diameter/2) ** 2 
print( "The circumference is " + str(circumference))
print( "The area is " + str(area))

end = input( "Thank you!")
end2 = input( "We have all your data now. Have a good day! This message will autodestruct in 3 seconds.")
end3 = input( "3")
end4 = input( "2")
end5 = input( "1")
end6 = print( "Boom!")