## Initializes our note as a structure
class note:
    def __init__(self, title = None, dueDate = None, priority = None, completed = None):
        self.title = title
        self.dueDate = dueDate
        self.priority = priority
        self.completed = completed

## Function 1 that adds new notes to our program using a class
def addNewNote(notes):

    title = ""
    dueDate = ""
    priority = 0
    completed = False

    while title == "":
        title = input("Enter Title: ")
        if title == "":
            print("Error: Title cannot be empty.")

    while len(dueDate) != 10:

        try:
            dueDate = input("Enter Due Date (YYYY-MM-DD): ")
        except:
            print("Enter Due Date (YYYY-MM-DD): ")

        if len(dueDate) != 10:
            print("Error: Date must be in YYYY-MM-DD format.")

    while priority == 0:
        try:
            priority = int(input("Enter Priority (1-5): "))
        except ValueError:
            print("Error: Priority must be between 1 and 5.")
            continue
        if priority > 5 or priority < 1:
            print("Error: Priority must be between 1 and 5.")
            priority = 0

    ## Adds our new note to our storage, adding to the end of the list
    notes.append(note(title, dueDate, priority, completed))
    print("Note added successfully!")

def viewAllNotes(notes):

    for i, note in enumerate(notes):
        print(f"[{i}] {note.title} | Due: {note.dueDate} | Priority: {note.priority}")

def markComplete(notes):
    print("test")

## Primary Function that calls our menu.
def main():
    # Single initialization variables
    notes = []
    ran = False

    while True:
        choiceInt = None

        if ran:
            print()


        print("1. Add New Note")
        print("2. View All Notes")
        print("3. Mark Note Complete (by Reference)")
        print("4. Compare Two Notes by Priority (Friend Function)")
        print("5. Show Stats (Function Overloading)")
        print("6. Exit")

        ## We loop until a valid choice is selected.
        while True:
            try: ## Utilizes try except to ensure integer input.
                choiceInt = int(input("Enter your choice:"))
                print()
                if choiceInt > 6 or choiceInt < 1:
                    print("Invalid Choice Error")
                else:
                    break

            except ValueError:
                print("Temp Error")

        ran = True
        if choiceInt == 1:
            addNewNote(notes)
        elif choiceInt == 2:
            viewAllNotes(notes)
        elif choiceInt == 3:
            markComplete(notes)
        elif choiceInt == 4:
            print(1)
        elif choiceInt == 5:
            print(1)
        elif choiceInt == 6:
            print(1)

main()