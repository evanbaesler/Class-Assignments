def sigFigCalculator(input):
    
    # Checks if the leading character of input is a 0 or . and deletes them
    while (input[0] == '0' or input[0] == '.'):
        
        input = input[1:]
    
    # In the case that the loop above finds a number before the decimal, we remove any remaining decimals
    input = input.replace(".","")

    # We then record the length (number of sig figs) and return it
    length = len(input)

    return(length)
        
def main():

    # Loops through this over and over so long as they do not exit the program
    mainLoop = True

    print("Welcome to Ohm's Law Calculator! \n")

    while mainLoop:

        loop = True; # Used within individual formulaTracks to continuously loop until a proper input is given
        formulaTrack = 0 # Determines formula used, 1 for I * R, 2 for V / R, 3 for V / I
        inputOne = "" # Takes a string input
        inputTwo = "" # Takes a string input
        inputOneCalculation = 0.0 # Turns string into double equivalent
        inputTwoCalculation = 0.0 # Turns string into double equivalent
        outputCalculation = 0.0 # Multiplies the doubles above together to find our value
        outputOne = 0 # Finds the sig figs of value inputTwo by running thru sigFigCalculator
        outputTwo = 0 # Finds the sig figs of value inputOne by running thru sigFigCalculator
        sigFigTrack = 0 # Takes the lesser of the two sig figs above to find the final sig figs

        # Asks user what it is calculating
        print("What would you like to calculate? \n")
        print("1. Voltage (V) \n")
        print("2. Current (I) \n")
        print("3. Resistance (R) \n")
        print("4. Exit \n")

        # Allows user to respond
        formulaTrack = eval(input("Enter your choice: "))

        # Checks if user input is equivalent to 1, 2, 3, or 4
        if formulaTrack in [1,2,3,4]:

            # Loops through this process until it finds two valid inputs, checking for errors each time (letters, <= 0)
            if formulaTrack == 1:
                while loop == True:

                    inputOne = (input("Enter Current (I) in Amps: "))
                    inputTwo = (input("Enter Resistance (R) in Ohms: "))

                    try:
                        inputOneCalculation = float(inputOne)
                        inputTwoCalculation = float(inputTwo)

                    except ValueError:
                        print("\nError! Please reinput your two numbers: \n")
                        continue

                    if (inputOneCalculation <= 0 or inputTwoCalculation <= 0):

                        print("Error! Please reinput your two numbers: \n")
                        continue

                    else:

                        loop = False
                # Takes the inputs, runs them thru sigFigCalculator to determine how many sig figs
                # and finds the min value between the two to find correct sig figs
                outputOne = sigFigCalculator(inputOne)
                outputTwo = sigFigCalculator(inputTwo)
                sigFigTrack = min(outputOne, outputTwo)

                # Calculates and then rounds based on sig figs.
                outputCalculation = (inputOneCalculation * inputTwoCalculation)
                print(f"Voltage(V) = {outputCalculation:.{sigFigTrack}g} V")
            
            # Loops through this process until it finds two valid inputs, checking for errors each time (letters, <= 0)
            elif formulaTrack == 2:
                    while loop == True:

                        inputOne = (input("Enter Voltage (V) in Volts: "))
                        inputTwo = (input("Enter resistance (R) in Ohms: "))

                        try:
                            inputOneCalculation = float(inputOne)
                            inputTwoCalculation = float(inputTwo)

                        except ValueError:
                            print("\nError! Please reinput your two numbers: \n")
                            continue

                        if (inputOneCalculation <= 0 or inputTwoCalculation <= 0):

                            print("Error! Please reinput your two numbers: \n")
                            continue

                        else:

                            loop = False
                    # Takes the inputs, runs them thru sigFigCalculator to determine how many sig figs
                    # and finds the min value between the two to find correct sig figs
                    outputOne = sigFigCalculator(inputOne)
                    outputTwo = sigFigCalculator(inputTwo)
                    sigFigTrack = min(outputOne, outputTwo)

                    # Calculates and then rounds based on sig figs.
                    outputCalculation = (inputOneCalculation / inputTwoCalculation)
                    print(f"Voltage(V) = {outputCalculation:.{sigFigTrack}g} A")
            
            # Loops through this process until it finds two valid inputs, checking for errors each time (letters, <= 0)
            elif formulaTrack == 3:
                    while loop == True:

                        inputOne = (input("Enter Volts (V) in Volts: "))
                        inputTwo = (input("Enter Current (I) in Amps: "))

                        try:
                            inputOneCalculation = float(inputOne)
                            inputTwoCalculation = float(inputTwo)

                        except ValueError:
                            print("\nError! Please reinput your two numbers: \n")
                            continue

                        if (inputOneCalculation <= 0 or inputTwoCalculation <= 0):

                            print("Error! Please reinput your two numbers: \n")
                            continue

                        else:

                            loop = False
                    # Takes the inputs, runs them thru sigFigCalculator to determine how many sig figs
                    # and finds the min value between the two to find correct sig figs
                    outputOne = sigFigCalculator(inputOne)
                    outputTwo = sigFigCalculator(inputTwo)
                    sigFigTrack = min(outputOne, outputTwo)

                    # Calculates and then rounds based on sig figs.
                    outputCalculation = (inputOneCalculation / inputTwoCalculation)
                    print(f"Voltage(V) = {outputCalculation:.{sigFigTrack}g}")

            elif formulaTrack == 4:

                print("Goodbye!")
                return(0)

            else:
                print("Invalid option. Please enter 1, 2, 3, or 4.\n")

        # Loops the closing statement until a valid input is given (y/n)
        exitLoop = True
        while(exitLoop == True):

            loopInput = input("Would you like to perform another calculation? (y/n): ")

            if (loopInput == "y"):
                exitLoop = False

            elif (loopInput == "n"):
                print("Goodbye! \n")
                return(0)

            else:
                print("Error: Option not included.")


main()