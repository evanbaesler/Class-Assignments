class Phrase:

    def __init__(self, phrase):
        self.phrase = phrase

    def getStringLength(self):
        return len(self.phrase)

def enterNewPhrase(phrases):

    phrase = ""

    while True:

        phrase = (input("Enter phrase: ")).strip()
        length = len(phrase)

        if length == 0:
            print("Error: Phrase cannot be empty.")
            continue

        phrases.append(Phrase(phrase))
        print("Phrase stored successfully.")
        splitToChars(phrases)
        break

def viewCurrentPhrase(phrases):

    print(phrases[-1].phrase)

def splitToChars(string):

        chars = list(string)

        return chars

def reversePhrase(phrases):

    chars = splitToChars(phrases[-1].phrase)
    reversedString = ""

    for i in range(len(chars) - 1, -1, -1):
        reversedString += chars[i]

    phrases[-1].phrase = reversedString
    print(reversedString)

def comparePhrases(phrases):

    string = phrases[-1].phrase
    comparisonString = input("Enter phrase to compare: ").strip()

    stringChars = splitToChars(string)
    comparisonChars = splitToChars(comparisonString)

    decision = 0

    for i in range(len(comparisonChars)):

        if comparisonChars[i] == stringChars[i]:
            continue

        elif comparisonChars[i] < stringChars[i]:
            decision = 1
            break

        elif comparisonChars[i] > stringChars[i]:
            decision = 2
            break

    if decision == 0:
        print(f"\"{string}\" and \"{comparisonString}\" are the same string")
    elif decision == 1:
        print(f"\"{comparisonString}\" comes before \"{string}\"")
    elif decision == 2:
        print(f"\"{string}\" comes before \"{comparisonString}\"")

def showStats(phrases, tag):

    string = phrases[-1].phrase
    vowels = "aeiouAEIOU"

    if tag == "Vowels":
        vowelCount = 0
        for char in string:
            if char in vowels:
                vowelCount += 1

        print(f"Total characters: {vowelCount}")

def main():

    phrases = [] ## Initializes phrases

    while True:
        print()
        choice = 0
        statsChoice = 0

        print("String & Pointer Practice Tool")
        print("1. Enter New Phrase")
        print("2. View Current Phrase")
        print("3. Reverse Phrase (Using Pointers)")
        print("4. Compare With Another Phrase (Friend Function)")
        print("5. Show Stats (Function Overloading")
        print("6. Exit")

        try:
            choice = int(input("Enter your choice: "))
        except ValueError:
            print("Enter a valid choice")

        if choice == 1:
            enterNewPhrase(phrases)
        elif choice == 2:
            viewCurrentPhrase(phrases)
        elif choice == 3:
            reversePhrase(phrases)
        elif choice == 4:
            comparePhrases(phrases)
        elif choice == 5:
            print("Show stats:")
            print("1. Character Count")
            print("2. Vowel Count")
            print("3. Consonant Count")

            while statsChoice > 3 or statsChoice < 1:
                try:
                    statsChoice = int(input("Enter option: "))

                except ValueError:
                    print("Enter a valid option")

                if statsChoice > 3 or statsChoice < 1:
                    print("Enter a valid option")

            if statsChoice == 1:
                showStats(phrases)

            if statsChoice == 2:
                showStats(phrases, "Vowels")

            if statsChoice == 3:
                showStats(phrases, "Consonants")

        elif choice == 6:
            exit()
main()




