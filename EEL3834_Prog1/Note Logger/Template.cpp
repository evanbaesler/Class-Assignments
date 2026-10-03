#include <iostream>
#include <iomanip>
#include <cstring>
#include <cctype>
#include <string>
#include <cstdlib>
#include <cmath>

using namespace std;

// Creates our class and structures
class Note { // Class that defines the structure and its variables
    public:
    string title;
    string dueDate;
    int priority;
    string completed;

    Note(){ // Default constructor, all values blank
        title = "";
        dueDate = "";
        priority = 0;
        completed = "No";
    }

    Note(string titleInput, string dueDateInput){ // Constructor that allows a title input and due date input
        title = titleInput;
        dueDate = dueDateInput;
        priority = 0;
        completed = "No";
    }

    Note(string titleInput, string dueDateInput, int priorityInput){ // Constructor that allows a title, due date, and priority input, we use this below
        title = titleInput;
        dueDate = dueDateInput;
        priority = priorityInput;
        completed = "No";
    }
    
};

// Adds new notes to our data
void addNote(Note notes[], int& noteCount){

    Note newNote; // Creates a blank new note using default constructor
    
    do {
        cout << "Enter Title: ";
        getline(cin, newNote.title); // Using getline so we can take multiple words at once (allows for spaces)

        if(newNote.title.empty()){
            cout << "Error: Title cannot be empty. \n";
        }
    } while (newNote.title.empty());

    do {
        cout << "Enter Due Date (YYYY-MM-DD): ";
        getline(cin, newNote.dueDate);

        if (newNote.dueDate.length() != 10 && newNote.dueDate.length() != 11) { // I am accepting 10 or 11 here since online it said windows adds a "/r"
            cout << "Error: Date must be in YYYY-MM-DD format.\n";              // I had issues with this but I believe our grader uses Linux
        }

    } while ((newNote.dueDate.length()) != 10 && (newNote.dueDate.length()) != 11);

    do {
        cout << "Enter Priority (1-5): ";
        cin >> newNote.priority;
        if (cin.fail()) {
            cout << "Invalid input! Please enter an integer.\n";
            cin.clear();
            cin.ignore(1000, '\n'); // Since this uses cin, we want to make sure that getline doesn't cause an issue, so we clear it
            return;
        }
        if (newNote.priority > 5 || newNote.priority < 1){
            cout << "Error: Priority must be between 1 and 5.\n";
        }
    } while (1 > newNote.priority || newNote.priority > 5 || newNote.priority == 0);

    notes[noteCount] = newNote; // Adds data to storage
    noteCount++; // Updates amount of notes stored

    cout << "Note added successfully!" << endl << endl;
}

void viewNotes(Note notes[], int noteCount){

    cout << "All Notes: " << endl;
    
    for (int i = 0; i < noteCount; i++){ // Indexes thru all notes to print information below.
        cout << "[" << i << "] "; // Index number
        cout << notes[i].title << " | "; // Title
        cout << "Due: " << notes[i].dueDate << " | "; // Duedate
        cout << "Priority: " << notes[i].priority << " | "; // Priority
        cout << "Completed: " << notes[i].completed << endl; // Completed yes/no
    }
    cout << endl;

}

// Marks notes complete
void markComplete(Note notes[], int& noteCount){

    int choice;

    cout << "Enter the index of the note to mark as complete: ";
    cin >> choice;

    if (cin.fail()) { // Checks that we get an integer input
        cout << "Invalid input! Please enter an integer.\n";
        cin.clear();
        cin.ignore(1000, '\n');
        return;
    }

    notes[choice].completed = "Yes"; // Updates completion status in storage
    cout << "Note \"" << notes[choice].title << "\" marked as completed." << endl << endl;

}

// Finds the higher priority of two notes
void comparePriorities(Note notes[], int& noteCount){

    string input = "";
    string output = "";
    int index = 0;
    int indiceOne;
    int indiceTwo;

    cout << "Enter two indices to compare (like 0 1): ";
    getline(cin, input); // Must use getline to capture spaces/"sentences"

    for(char c : input){ // For every character in the string we check for spaces
        
        if(input[index] != ' '){ // Since we cant easily delete a character in a string, we ignore spaces
            output += c; // We then construct a new string without the spaces
        } 
        index += 1;
    }

    if (output.length() == 2){

        indiceOne = (output[0]) - '0';
        indiceTwo = (output[1]) - '0'; // Found online that ASCII stores char versions of integers as +48, so '5' = 53, and '0' = 48, 53 - 48 = 5
        
        if (indiceOne >= noteCount || indiceTwo >= noteCount){  // Since subtracting the ASCII from a character should always be non-negative
            cout << "Error: Indices out of range." << endl;     // We only check if they are too large
            return;
        }

        else{
            if (notes[indiceOne].priority > notes[indiceTwo].priority){
                cout << "\"" << notes[indiceOne].title << "\" has higher priority than \"" << notes[indiceTwo].title << "\"" << endl << endl;
            }
            else if (notes[indiceTwo].priority > notes[indiceOne].priority){
                cout << "\"" << notes[indiceTwo].title << "\" has higher priority than \"" << notes[indiceOne].title << "\"" << endl << endl;
            }
            else{
                cout << "The two indexes have the same priority.";
            }
        }

    }
    else{
        cout << "Error: Input two indices!";
    }
}

// Returns total notes
void showStats(Note notes[], int noteCount){ // Overloaded, if we do not want to show completed note count, we don't put our third boolean parameter 
    cout << "Total notes: " << (noteCount) << endl << endl; // Returns total notes
}
// Returns total completed notes
void showStats(Note notes[], int noteCount, bool showCompleted){ // By putting the boolean we request to show completed notes
    
    int completedCount = 0;

    for (int i = 0; i < noteCount; i++){
        Note& note = notes[i];
        if(note.completed == "Yes"){ // Iterates thru notes to see if this paramter is "Yes", if it is we count it
            completedCount += 1;
        }
    }

    cout << "Completed notes: " << completedCount << endl << endl;

}

// Menu function
int main()
{
    
    Note notes[100]; // Lets us have up to 100 notes
    int noteCount = 0; // Index variable
    
    while (true){
        int choice;
        int overLoadChoice;
        
        cout << "Note & Reminder Organizer\n";
        cout << "1. Add New Note\n";
        cout << "2. View All Notes \n";
        cout << "3. Mark Note Complete (by Reference)\n";
        cout << "4. Compare Two Notes by Priority (Friend Function)\n";
        cout << "5. Show Stats (Function Overloarding)\n";
        cout << "6. Exit\n";

        cout << "Enter your choice: ";
        cin >> choice;
        cin.ignore(1000, '\n');

        if (cin.fail()) {
            cout << "Invalid input! Please enter an integer.\n";
            cin.clear();
            cin.ignore(1000, '\n');
            continue;
        }

        cout << endl;

        if (choice == 1){
            addNote(notes, noteCount);
        }
        else if (choice == 2){
            viewNotes(notes, noteCount);
        }
        else if (choice == 3){
            markComplete(notes, noteCount);
        }
        else if (choice == 4){
            comparePriorities(notes, noteCount);
        }
        else if (choice == 5){
            cout << "Show stats: " << endl << "1. Total Notes" << endl << "2. Completed Notes" << endl << "Enter option: ";
            cin >> overLoadChoice;
            
            if (cin.fail()) {
                cout << "Invalid input! Please enter a valid number.\n";
                cin.clear();
                cin.ignore(1000, '\n');
            }
            else if (overLoadChoice == 1){
                showStats(notes, noteCount);
            }
            else if (overLoadChoice == 2){
                showStats(notes, noteCount, true);
            }
            
            else{
                cout << "Invalid input! Please enter an integer.\n";
            }
            

        }
        else if (choice == 6){
            cout << "Exiting program. Goodbye!";
            exit(0);
        }
    }
    return 0;
}