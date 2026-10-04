#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>

using namespace std;


// This function operates by finding the length of a string after removing trailing zeroes and decimal places.
// I wanted to make sure that trailing zeroes are removed, so I had it delete the decimal if it comes across it before a non-zero number.
int sigFigCalculator(string input) {

    while (input[0] == '0' || input[0] == '.') {

        input = input.erase(0, 1);

    }
    // I then wanted to make sure there was no decimal place affecting sig figs, so I used string::npos to ensure that it still exists.
    if (input.find('.') != string::npos) {
        input.erase(input.find('.'), 1);
    }
    // Records and returns length.
    int length = input.length();

    return(length);

}

int main() {
    
    string loopInput; // Used at the end for our exit loop to read our input
    bool exitLoop; // Used to see if the end loop needs to continue or not
    int loopCheck = 1; // Used to loop the main function until broken
    cout << "Welcome to the Ohm's Law Calculator!";

    while (loopCheck == 1) {

        bool loop; // Used to loop through the calculation process until two proper inputs are given.
        double formulaTrack = 0; // Used to determine which version of V = IR to use depending on variable being requested.
        string inputOne; // First input, stored as a string to determine string length accurately without additional zeroes being added from string to double.
        string inputTwo; // Second input, stored as a string to determine string length accurately without additional zeroes being added from string to double.
        double inputOneCalculation = 0.0; // stod(inputOne);
        double inputTwoCalculation = 0.0; // stod(inputTwo);
        double outputCalculation = 0.0; // Calculates the value of the given variable based on inputs.
        int outputOne = 0; // Stores sig figs based on input one.
        int outputTwo = 0; // Stores sig figs based on input two.
        int sigFigTrack = 0; // Uses smaller of the two above outputs to determine final sig figs.

        cout << endl << "What would you like to calculate?" << endl;
        cout << "1. Voltage (V)" << endl;
        cout << "2. Current (I)" << endl;
        cout << "3. Resistance (R)" << endl;
        cout << "4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> formulaTrack;

        // This if statement makes sure our choice reflects our options, and if a letter is given it checks for a input failure, clearing the error and repeats the loop using continue.
        if (formulaTrack != 1 && formulaTrack != 2 && formulaTrack != 3 && formulaTrack != 4 || cin.fail()) {
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            cout << endl << "Error! Please choose a number between 1 and 4: \n";
            continue;
        }

        if (formulaTrack == 1) {
            loop = true;
            while (loop == true) {
                // This is effectively our voltage function
                cout << endl << "Enter current (I) in Amps : ";
                cin >> inputOne;
                cout << endl << "Enter resistance (R) in Ohms: ";
                cin >> inputTwo;

                // I found that my inputs would error if they were strings that were non-numbers.
                // To fix this I found the try function, which ensures they are numbers, or returns an error.
                // In the case there is an error, it outputs it to the terminal and resets the loop using continue.
                try {
                    inputOneCalculation = stod(inputOne);
                    inputTwoCalculation = stod(inputTwo);
                }
                catch (...) {
                    cout << "\nError! Please reinput your two numbers: \n";
                    continue;
                }

                // After converting our string to a double, if the double is negative we give an error.
                if (inputOneCalculation <= 0 || inputTwoCalculation <= 0) {
                    cout << endl << endl << "Error! Please reinput your two numbers: \n";
                }

                // If there are no errors, and our values are valid, we can move outside of our variable collection and move on to outputs.
                else {
                    loop = false;

                }
            }

            // This calculates the sig figs using the string inputs in our function above
            // it is done with strings and not doubles as stod would add floating zeroes.
            outputOne = sigFigCalculator(inputOne);
            outputTwo = sigFigCalculator(inputTwo);
            sigFigTrack = min(outputOne, outputTwo);

            // Calculates requested variable based on what we are solving for, in this case, voltage.
            outputCalculation = (inputOneCalculation * inputTwoCalculation);
            // Sets our precision to the amount of sig figs gathered above, as in total digits shown.
            cout << setprecision(sigFigTrack) << "Voltage(V) = " << outputCalculation << "V" << endl << endl;
        }

        if (formulaTrack == 2) {
            loop = true;
            while (loop == true) {
                // This is effectively our current function
                cout << endl << "Enter voltage (V) in Volts : ";
                cin >> inputOne;
                cout << endl << "Enter resistance (R) in Ohms: ";
                cin >> inputTwo;

                // I found that my inputs would error if they were strings that were non-numbers.
                // To fix this I found the try function, which ensures they are numbers, or returns an error.
                // In the case there is an error, it outputs it to the terminal and resets the loop using continue.
                try {
                    inputOneCalculation = stod(inputOne);
                    inputTwoCalculation = stod(inputTwo);
                }
                catch (...) {
                    cout << "\nError! Please reinput your two numbers: \n";
                    continue;
                }

                // After converting our string to a double, if the double is negative we give an error.
                if (inputOneCalculation <= 0 || inputTwoCalculation <= 0) {
                    cout << endl << endl << "Error! Please reinput your two numbers: \n";
                }

                // If there are no errors, and our values are valid, we can move outside of our variable collection and move on to outputs.
                else {
                    loop = false;

                }
            }

            // This calculates the sig figs using the string inputs in our function above
            // it is done with strings and not doubles as stod would add floating zeroes.
            outputOne = sigFigCalculator(inputOne);
            outputTwo = sigFigCalculator(inputTwo);
            sigFigTrack = min(outputOne, outputTwo);

            // Calculates requested variable based on what we are solving for, in this case, voltage.
            outputCalculation = (inputOneCalculation / inputTwoCalculation);
            // Sets our precision to the amount of sig figs gathered above, as in total digits shown.
            cout << setprecision(sigFigTrack) << "Current(I) = " << outputCalculation << "A" << endl << endl;
        }

        if (formulaTrack == 3) {
            loop = true;
            while (loop == true) {
                // This is effectively our resistance function, notes above apply
                cout << endl << "Enter voltage (V) in Volts : ";
                cin >> inputOne;
                cout << endl << "Enter current (I) in Amps: ";
                cin >> inputTwo;

                // I found that my inputs would error if they were strings that were non-numbers.
                // To fix this I found the try function, which ensures they are numbers, or returns an error.
                // In the case there is an error, it outputs it to the terminal and resets the loop using continue.
                try {
                    inputOneCalculation = stod(inputOne);
                    inputTwoCalculation = stod(inputTwo);
                }
                catch (...) {
                    cout << "\nError! Please reinput your two numbers: \n";
                    continue;
                }

                // After converting our string to a double, if the double is negative we give an error.
                if (inputOneCalculation <= 0 || inputTwoCalculation <= 0) {
                    cout << endl << endl << "Error! Please reinput your two numbers: \n";
                }

                // If there are no errors, and our values are valid, we can move outside of our variable collection and move on to outputs.
                else {
                    loop = false;

                }
            }

            // This calculates the sig figs using the string inputs in our function above
            // it is done with strings and not doubles as stod would add floating zeroes.
            outputOne = sigFigCalculator(inputOne);
            outputTwo = sigFigCalculator(inputTwo);
            sigFigTrack = min(outputOne, outputTwo);

            // Calculates requested variable based on what we are solving for, in this case, voltage.
            outputCalculation = (inputOneCalculation / inputTwoCalculation);
            // Sets our precision to the amount of sig figs gathered above, as in total digits shown.
            cout << setprecision(sigFigTrack) << "Resistance(R) = " << outputCalculation << endl << endl;
        }
        // Removes user from program
        if (formulaTrack == 4) {

            cout << endl << "Goodbye!" << endl;
            return(0);

        }

        exitLoop = true; // Used to determine if this final exit program loop is done (for when the process above is to be repeated)
        while (exitLoop == true) {

            cout << "Would you like to perform another calculation? (y/n): ";
            cin >> loopInput;

            if (loopInput == "y") {
                exitLoop = false;
            }
            else if (loopInput == "n") {

                cout << endl << "Goodbye!" << endl;
                return(0);

            }
            else {

                cout << endl << "Error: Option not included." << endl << endl;

            }
        }
    }
}