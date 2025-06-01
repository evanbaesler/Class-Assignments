#include <iostream>
#include <string>
#include <cmath>
using namespace std;

double sigFigCalculator(double input) {

    double decimals = (input - static_cast<int>(input));
    cout << decimals;

    string decimalsLength = to_string(decimals);
    cout << decimalsLength;

    return(0);

}

int main() {

    sigFigCalculator(3.1432345);
    string loopInput;
    int loopCheck = 1;
    cout << "Welcome to the Ohm's Law Calculator!";

    while (loopCheck == 1) {

        bool loop = false;
        int formulaTrack = 0;
        double inputOne = 0.0;
        double inputTwo = 0.0;
        double output = 0;
        double sigFigTrack = 0;

        cout << endl << "What would you like to calculate?" << endl;
        cout << "1. Voltage (V)" << endl;
        cout << "2. Current (I)" << endl;
        cout << "3. Resistance (R)" << endl;
        cout << "4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> formulaTrack;

        if (formulaTrack == 1) {
            loop = true;
            while (loop == true) {
                //This is effectively our voltage function
                cout << endl << "Enter current (I) in Amps : ";
                cin >> inputOne;
                cout << endl << "Enter resistance (R) in Ohms: ";
                cin >> inputTwo;

                if (inputOne < 0 || inputTwo < 0 || cin.fail()) {
                    cin.clear();
                }
                else {
                    loop = false;

                }
            }
            output = (inputOne * inputTwo);

            cout << endl << "Voltage(V) = " << output << "V" << endl << endl;
        }
        if (formulaTrack == 2) {
            //This is effectively our current function
            cout << endl << "Enter voltage (V) in Volts : ";
            cin >> inputOne;
            cout << endl << "Enter resistance (R) in Ohms: ";
            cin >> inputTwo;
            output = (inputOne / inputTwo);
            cout << "Current (I) = " << output << "A" << endl << endl;
        }
        if (formulaTrack == 3) {
            //This is effectively our Resistance function
            cout << endl << "Enter voltage (V) in Volts : ";
            cin >> inputOne;
            cout << endl << "Enter current (I) in Amps: ";
            cin >> inputTwo;

            output = (inputOne / inputTwo);
            cout << "Resistance (R) = " << output << endl << endl;
        }
        if (formulaTrack == 4) {

            return(0);

        }

        cout << "Would you like to perform another calculation? (y/n): ";
        cin >> loopInput;

        if (loopInput == "y") {

        }
        else if (loopInput == "n") {

            return(0);
        }
        else {
            cout << "Error: Option not included." << endl;
            return(0);
        }
    }
}