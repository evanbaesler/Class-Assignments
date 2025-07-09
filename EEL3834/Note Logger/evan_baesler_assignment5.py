## Initializes our note as a structure
class note:
    def __init__(self, title = None, dueDate = None, priority = None, completed = None):
        self.title = title
        self.dueDate = dueDate
        self.priority = priority
        self.completed = completed

## Function 1 that adds new notes to our program using a class
def addNote(notes):

    title = ""
    dueDate = ""
    priority = 0
    completed = "No"

    ## Ensures our title is not empty
    while title == "":
        title = input("Enter Title: ")
        if title == "":
            print("Error: Title cannot be empty.")

    ## Ensures the length of our due date string is 10 characters
    while len(dueDate) != 10:

        try:
            dueDate = input("Enter Due Date (YYYY-MM-DD): ")
        except:
            print("Enter Due Date (YYYY-MM-DD): ")

        if len(dueDate) != 10:
            print("Error: Date must be in YYYY-MM-DD format.")
    ## Loops until we get a non-zero priority
    while priority == 0:
        try:
            priority = int(input("Enter Priority (1-5): "))
        ## Protects against non-integer inputs
        except ValueError:
            print("Error: Priority must be between 1 and 5.")
            continue
        if priority > 5 or priority < 1:
            print("Error: Priority must be between 1 and 5.")
            priority = 0

    ## Adds our new note to our storage, adding to the end of the list
    notes.append(note(title, dueDate, priority, completed))
    print("Note added successfully!")

## Shows all data at once
def viewAllNotes(notes):

    print("All Notes: ")
    ## Enumerates is letting us index through the notes while also letting us access their data
    for i, note in enumerate(notes):
        print(f"[{i}] {note.title} | Due: {note.dueDate} | Priority: {note.priority} | Completed: {note.completed}")

## Marks the notes complete and stores the change
def markComplete(notes):

    while True:
        try:
            indexOfNote = int(input("Enter index of the note to mark complete: "))
        ## Protects against non-integer inputs
        except ValueError:
            print("Error: Index of note must be an integer.")
            continue

        ## Sets a selected note based on index number
        selectedNote = notes[indexOfNote]

        ## Checks to see if already complete, if not, it completes, if so, alerts that it is already completed
        if selectedNote.completed == "No":
            selectedNote.completed = "Yes"
            print(f"Note \"{selectedNote.title}\" marked as completed.")
            return
        elif selectedNote.completed == "Yes":
            print(f"Note \"{selectedNote.title}\" already marked as completed.")
            return
        else:
            print("Note does not exist.")
            return

## Finds the highest priority of two notes based on indices
def comparePriorities(notes):

    ## Removes spaces, splitting the characters from the spaces, defined here \/
    comparedNotes = input("Enter two indices to compare (like 0 1): ").split(" ")

    ## Checks if more than 2 indices are put in
    if len(comparedNotes) != 2:
        print("Error: Incorrect number of arguments.")

    ## Checks if the inputs were non-integers
    try:
        inputOne = int(comparedNotes[0])
        inputTwo = int(comparedNotes[1])

        ## Makes sure the indices are not larger than our noteCount
        if inputOne >= len(notes) or inputTwo >= len(notes):
            print("Error: Indices out of range.")
            return

        noteOne = notes[inputOne]
        noteTwo = notes[inputTwo]

        ## Compares respective notes
        if inputOne > inputTwo:
            print(f"\"{noteOne.title}\" has higher priority than \"{noteTwo.title}\".")

        elif inputOne < inputTwo:
            print(f"\"{noteTwo.title}\" has higher priority than \"{noteOne.title}\".")

        else:
            print("The two indexes have the same priority.")

    except ValueError:
        print("Error: Enter two indices to compare.")

## Shows stats of all notes, or completed notes
def showStats(notes):

    print("Show stats:")
    print("1. Total Notes")
    print("2. Compeleted Notes")

    try:
        option = int(input("Enter option: "))

        if option != 1 and option != 2:
            print("Error: Incorrect option.")

        if option == 1:
            totalNotes = len(notes)
            print(f"Total notes: {totalNotes}")

        ## Checks if notes are completed, if so, it adds one to the count and returns the sum
        if option == 2:
            totalCompletedNotes = 0
            for note in notes:
                if note.completed == "Yes":
                    totalCompletedNotes += 1
            print(f"Completed notes: {totalCompletedNotes}")

    except:
        print("Error: Option must be an integer.")

## Primary Function that calls our menu.
def main():
    # Single initialization variables
    notes = []
    ran = False

    while True:
        choiceInt = None

        if ran:
            print()

        print("Note & Reminder Organizer")
        print("1. Add New Note")
        print("2. View All Notes")
        print("3. Mark Note Complete (by Reference)")
        print("4. Compare Two Notes by Priority (Friend Function)")
        print("5. Show Stats (Function Overloading)")
        print("6. Exit")

        ## We loop until a valid choice is selected.
        while True:
            try: ## Utilizes try except to ensure integer input.
                choiceInt = int(input("Enter your choice: "))
                print()
                if choiceInt > 6 or choiceInt < 1:
                    print("Invalid Choice Error")
                else:
                    break

            except ValueError:
                print("Temp Error")

        ran = True
        if choiceInt == 1:
            addNote(notes)
        elif choiceInt == 2:
            viewAllNotes(notes)
        elif choiceInt == 3:
            markComplete(notes)
        elif choiceInt == 4:
            comparePriorities(notes)
        elif choiceInt == 5:
            showStats(notes)
        elif choiceInt == 6:
            print("Exiting program. Goodbye!")
            exit()
main()