import random

# Our function for the player to input their guess.
def playerTurn(low, high):

    output = 0

    # We use a True loop since return will exit this function entirely.
    while True:

        # Checks for letters or other non-numeric inputs.
        try:

            output = int(input("Your turn! Enter your guess: "))

        except ValueError:

            print("Invalid input! Please enter a number between 10 and 99.")
            continue

        # Checks to make sure input is within bound.
        if output >= high or output <= low:

            print("Invalid input! Please enter a number between ", low, " and ", high, ".\n")


        # If our input meets our bounds, we record it as the guess.
        elif high > output > low:

            return output

def computerTurn(low, high):

    output = 0

    # Generates a number between low + 1 and high - 1, to stay within bounds. Will only generate integers so no worries for error cases.
    output = random.randint(low + 1, high - 1)
    print("Computer guesses: ", output)

    return output

def main():

    playing = True
    answer = 0
    guessLog = 0
    closingStatement = True
    closeCheck = ""

    # Uses a True loop because the function will either be infinitely repeated, or broken by a return when program is exited.
    while True:

        # We use a random number between 11 and 98 as these values are included in our random generation, and we do not want 10 or 99 as an option (unguessable.)
        answer = random.randint(11,98)
        low = 10
        high = 99
        playing = True

        print("Welcome to the Guessing Game! \n")
        print("A secret 2-digit code has been set between 10 and 99.\n\n")

        # This loop represents our gameplay, and the messages above are only repeated when this loop is broken (another game is started.)
        while playing:

            # We give the player the first turn, and then check their input.If the answer is correct in any case, there is a
            #break and the loop ends.
            guessLog = playerTurn(low, high)

            if guessLog == answer:

                playing = False
                print("You cracked the code!\n")
                break

            elif guessLog < answer:

                print("Too low!\n")
                low = guessLog

            else:

                print("Too high!\n")
                high = guessLog

            # Follows the same check logic as above.
            guessLog = computerTurn(low, high)

            if guessLog == answer:

                playing = False
                print("Computer cracked the code!\n")
                break

            elif guessLog < answer:

                print("Too low!\n")
                low = guessLog

            else:

                print("Too high!\n")
                high = guessLog

        # After a game is over, turns the boolean to True, iterates through a loop until a sufficient response is given,
        # then sets it to false to start a new game or returns to exit the program.
        closingStatement = True

        while closingStatement:

            closeCheck = input("Would you like to play again? (y/n): ")

            if closeCheck == "y" or closeCheck == "Y":

                closingStatement = False
                playing = False

            elif closeCheck == "n" or closeCheck == "N":

                exit()

            else:

                print("Error: Invalid input!\n")

main()