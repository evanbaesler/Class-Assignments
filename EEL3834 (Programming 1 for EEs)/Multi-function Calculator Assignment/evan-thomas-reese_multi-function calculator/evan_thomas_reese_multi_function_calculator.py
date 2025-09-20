import cmath
import sys

print("Welcome to the multifunction calculator!")

choice = 0


while (True):

   while (True):

       print("Menu:")
       print("1. Addition")
       print("2. Subtraction")
       print("3. Multiplication")
       print("4. Division")
       print("5. Factorial")
       print("6. Greatest Common Divisor (GCM)")
       print("7. Least Common Multiple (LCM)")
       print("8. Exit")
       
       try:
            choice = eval(input("Enter your choice: "))
       except:
            print("Error: Invalid input!")

       if choice > 8:
           print("Error invalid choice")

       match choice:
           case 1:  ##Addition
               
               try:
                   input1 = eval(input("Enter first number: "))
                   input2 = eval(input("Enter second number: "))
               except:
                   print("Error: Invalid Input!")
                   
               answer1 = input1 + input2
               print("Result: ", input1, "+", input2, "=", answer1)
               answer2 = 0
               answer2 = answer1
               while (True):
                   askAgain = input("Would you like to add another number? (y/n): ")
                   if askAgain == 'y' or askAgain == 'Y':
                       answer1 = answer2
                       
                       try:
                            input3 = eval(input("Enter number: "))
                       except:
                            print("Error: Invalid input!")
                            
                       answer2 = answer1 + input3
                       print("Result = ", answer1, "+", input3, "=", answer2)
                   elif askAgain == 'n' or askAgain == 'N':
                       break
                   else:
                       print("Error incorrect input")
               break

           case 2:  ##subtraction
               
               try:
                   input1 = eval(input("Enter first number: "))
                   input2 = eval(input("Enter second number: "))
               except:
                   print("Error: Invalid input.")

               answer1 = input1 - input2
               print("Result: ", input1, "-", input2, "=", answer1)
               answer2 = 0
               answer2 = answer1
               while (True):
                   askAgain = input("Would you like to subtract another number? (y/n): ")
                   if askAgain == 'y' or askAgain == 'Y':
                       answer1 = answer2
                       input3 = eval(input("Enter number: "))
                       answer2 = answer1 - input3
                       print("Result = ", answer1, "-", input3, "=", answer2)
                   elif askAgain == 'n' or askAgain == 'N':
                       running = False
                       break
                   else:
                       print("Error incorrect input")
           case 3:
               while (True):
                   
                   try:
                       input1 = eval(input("Enter first number: "))
                       input2 = eval(input("Enter second number: "))
                   except:
                       print("Error invalid input")
                   else:
                       break
               answer1 = input1 * input2
               print("Result: ", input1, "*", input2, "=", answer1)
               answer2 = 0
               answer2 = answer1
               while (True):
                   askAgain = input("Would you like to multiply another number? (y/n): ")
                   if askAgain == 'y' or askAgain == 'Y':
                       answer1 = answer2
                       input3 = eval(input("Enter number: "))
                       answer2 = answer1 * input3
                       print("Result = ", answer1, "*", input3, "=", answer2)
                   elif askAgain == 'n' or askAgain == 'N':
                       running = False
                       break
                   else:
                       print("Error incorrect input")
           case 4:
               input1 = eval(input("Enter first number: "))
               input2 = eval(input("Enter second number: "))
               if input2 == 0:
                   print("Error: Division by zero")
                   input2 = eval(input("Please reinput the second number: "))
               answer1 = input1 / input2
               print("Result: ", input1, "/", input2, "=", answer1)
               answer2 = 0
               answer2 = answer1
               while (True):
                   askAgain = input("Would you like to divide by another number? (y/n): ")
                   if askAgain == 'y' or askAgain == 'Y':
                       answer1 = answer2
                       input3 = eval(input("Enter number: "))
                       answer2 = answer1 / input3
                       print("Result = ", answer1, "/", input3, "=", answer2)
                   elif askAgain == 'n' or askAgain == 'N':
                       break
                   else:
                       print("Error incorrect input")
           case 5:
                   input1 = eval(input("\nEnter your number to calculate a factorial: "))
                   iterations = input1
                   output = 1
                   if (input1 == 0):
                       print(1)
                   elif (input1 < 0):
                       print("\nInvalid input!")
                   else:
                       while (iterations > 0):
                           output = output * iterations
                           iterations = iterations - 1
                       print("")
                       print(output)
                       print("")
                   break
           case 6:
                print("\nWe will find the Greatest Common Denominator of your following inputs! \n")


                try:
                    input1 = int(input("Enter the first number: "))
                    input2 = int(input("Enter the second number: "))

                except:

                    print("Invalid inputs! Only use integers\n")
                    break

                greatestNumber = max(input1,input2)

                while(greatestNumber >= 0):

                    if(input1 % greatestNumber == 0 and input2 % greatestNumber == 0):

                        print("")
                        print("The Greatest Common Denominator of",input1,"and",input2,"is:",greatestNumber)
                        break

                    greatestNumber = greatestNumber - 1
                
                print("")
                break
                   
           case 7:
                print("We will find the Least Common Multiple of the following inputs! \n")
               
                try:
                   input1 = int(input("Enter the first number: "))
                   input2 = int(input("Enter the second number: "))
               
                except:

                    print("Invalid inputs! Only use integers\n")
                    break

                LCM = 1
                while (LCM > 0):
                   if (LCM % input1 == 0 and LCM % input2 == 0):
                       print("\nThe LCM of ", input1, " and ", input2, " is ", LCM)
                       break
                   else:
                       LCM = LCM + 1
                break
           case 8:
               print("Exiting program... Goodbye!")
               sys.exit()
           
           
       continue