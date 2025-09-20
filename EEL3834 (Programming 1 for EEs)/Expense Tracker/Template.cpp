#include <iostream>
#include <string>
#include <map>              // Stores key-value pairs
#include <iomanip>          // Used for formatting numeric output

using namespace std;

int main() {
    string category[999];
    float expense[999];
    string tempCategory;
    float tempExpense;
    int track = 0;
    float income;

    // Input income
    while (true) {
        cout << "Enter monthly income: ";
        cin >> income;

        if (cin.fail()) {
            cout << "Invalid input. Please enter a number." << endl;
            cin.clear();
            cin.ignore(1000, '\n');
        } else if (income <= 0) {
            cout << "Error: Income must be positive." << endl;
        } else {
            break;
        }
    }

    // Input expenses
    while (true) {
        cout << "Enter expense category (or 'done'): ";
        cin >> tempCategory;

        if (tempCategory == "done") {
            break;
        }

        // Check for duplicate category
        bool duplicate = false;
        for (int i = 0; i < track; ++i) {
            if (tempCategory == category[i]) {
                cout << "Error: Category must have a new name." << endl;
                duplicate = true;
                break;
            }
        }
        if (duplicate) continue;

        cout << "Enter amount: ";
        cin >> tempExpense;

        if (cin.fail()) {
            cout << "Invalid input. Please enter a number." << endl;
            cin.clear();
            cin.ignore(1000, '\n');
            continue;
        }
        if (tempExpense < 0) {
            cout << "Expense amounts must be non-negative." << endl;
            continue;
        }

        // Store category and expense
        category[track] = tempCategory;
        expense[track] = tempExpense;
        track++;
    }

    float totalSpent = 0;
    for (int i = 0; i <= track ; ++i){
        totalSpent += expense[i];
    }

    float largestExpense = 0;
    for (int i = 0; i <= track ; ++i){
        if (expense[i] > largestExpense){
            largestExpense = expense[i];
        } 
    }

    cout << fixed << setprecision(2);
    cout << endl << "--- Budget Summary ---" << endl;
    cout << "Income: " << income << endl;
    cout << "Total Spent: " << totalSpent << endl;
    cout << "Remaining: " << (income - totalSpent) << endl;
    cout << "Expenses Entered: " << (track) << endl;
    cout << "Largest Expense: " << largestExpense << endl << endl;

    cout << "By Category: " << endl;
    for (int i = 0; i < track; ++i){
        cout << category[i] << " " << expense[i] << endl;
    }

    return 0;
}