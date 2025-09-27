#include <iostream>
#include <iomanip>
#include <cstring>
#include <cctype>
#include <string>
#include <cstdlib>
#include <cmath>

using namespace std;

// Declares our structure for our Cities
struct City {
    char name[50];
    char code[4];
    double temperatures[7];
    int readingCount;
};

// Allows us to add a city to our data
void addCity(City cities[], int &cityCount){
    bool codeCheck = true;
    City newCity;

    // Loops through taking a name input until our city has a name that is not empty
    do {
        cout << "Enter City Name: ";
        cin.ignore();
        cin.getline(newCity.name, 50);
        if(strlen(newCity.name) == 0){
            cout << "Error: City name cannot be empty. \n";
        }
    } while (strlen(newCity.name) == 0);

    // Makes sure our city code is 3 uppercase letters
    do {
        codeCheck = true;
        cout << "Enter City Code (3 letters): ";
        cin.getline(newCity.code, 4);

        if(strlen(newCity.code) != 3 || isupper(newCity.code[0]) == false || isupper(newCity.code[1]) == false || isupper(newCity.code[2]) == false){
            codeCheck = false;
        }

        // Compares the difference in the our new city code and all existing codes, if the difference is equivalent to zero, the strings are the same and non-unique
        for (int i = 0; i < cityCount && codeCheck; i++){
            if (strcmp(cities[i].code, newCity.code) == 0){
                codeCheck = false;
                break;
            }
        }

        // If the codeCheck returns false it means the code is not unique
        if(codeCheck == false){
            cout << "Error: City code must be unique and exactly 3 letters.\n";
        }
    } while (codeCheck == false);

    // Keeps track of how many temperature inputs we have
    int tempTrack = 0;
    while (true) {
        cout << "Enter number of temperature readings (max 7): ";
        cin >> tempTrack;
        // If we have a request to input a number of temperatures outside our range of 1 to 7, we return an error
        if (tempTrack > 7 || tempTrack < 1) {
            cout << "Error: You must enter between 1 and 7 temperatures. \n";
        }
        else { 
            break; 
        }
    }
    
    // Stores how many readings this city has
    newCity.readingCount = tempTrack;

    // Iterates through storing our temperature data a number of times equal to the number above
    for(int i = 0; i < tempTrack; i++){

        cout << "Enter temperature " << (i+1) << ": ";
        while (true){
            cin >> newCity.temperatures[i];
            // Loops through until a temperature between -100 and 100 degrees C is given
            if (newCity.temperatures[i] > 100 || newCity.temperatures[i] < -100){
                cout << "Error: Temperature must be between -100 and 100 degrees C. \n";
            }
            else {
                break;
            }
        }
        
    }

    // Replaces the data storage for cities at our cityCount point, overwriting/adding new data
    cities[cityCount] = newCity;
    cout << "City data added successfully!\n";
    cout << endl;
    // Iterates to allow new data to be stored when reused
    cityCount++;
    return;
}

// Calculates the average temperature across all cities combined
double calculateAverageTemp(City cities[], int cityCount) {
    double sum = 0.0;
    int totalTemps = 0;

    // Iterates through temperatures within cities, cycling through a cities temperatures then moving to the next city
    for (int i = 0; i < cityCount; i++) {
        for (int j = 0; j < cities[i].readingCount; j++) {
            // As the program cycles through temperatures, it sums together the temperature data and increments the total temperatures logged
            sum += cities[i].temperatures[j];
            totalTemps++;
        }
    }

    // Prevents division by 0 if no data is logged
    if (totalTemps == 0){
        return(0.00);
    } 

    // Since return does not seem to work with setprecision, we round our return value to two places "manually"
    return(round((sum / totalTemps) * 100) / 100);
}

// Calculates the average temperature for a single city by being passed its temperatures array and length
double calculateAverageTemp(double temps[], int count) {
    // Prevents division by 0 again by returning 0 if there is no data written
    if (count == 0) return 0.00;

    double sum = 0.00;
    // Sums together all of the temperatures
    for (int i = 0; i < count; i++) {
        sum = temps[i] + sum;
    }
    // Rounds the average to two decimal places
    return round((sum / count) * 100) / 100;
}

// Finds the hottest and coldest cities in our data given the cities array and the amount of cities
void findHottestAndColdest(City cities[], int cityCount) {
    if (cityCount == 0) {
        cout << "No cities available.\n";
        return;
    }

    int hottestCount = 0;
    int coldestCount = 0;
    // Passes the first average through our calculateAverageTemp function to give us a baseline to compare other temperature averages to
    double hottestAvg = calculateAverageTemp(cities[0].temperatures, cities[0].readingCount);
    double coldestAvg = hottestAvg;

    // Iterates through all data to find the min and max temperature averages of all cities
    for (int i = 1; i < cityCount; i++) {
        double avg = calculateAverageTemp(cities[i].temperatures, cities[i].readingCount);
        // Compares our average to the hottest/coldest data and replaces it when necessary, saves index to print out below
        if (avg > hottestAvg) {
            hottestAvg = avg;
            hottestCount = i;
        }
        if (avg < coldestAvg) {
            coldestAvg = avg;
            coldestCount = i;
        }
    }

    cout << "Hottest city: " << cities[hottestCount].name << " (" << cities[hottestCount].code 
         << ") Average: " << hottestAvg << " C\n";
    cout << "Coldest city: " << cities[coldestCount].name << " (" << cities[coldestCount].code 
         << ") Average: " << coldestAvg << " C\n\n";
}

// Searches for a city to find its respective temperatures, code, and name
void searchCity(City cities[], int cityCount) {
    if (cityCount == 0) {
        cout << "No cities available to search.\n\n";
        return;
    }
    int choice = 0;
    
    while(true){
    cout << "Search by (1 for Code, 2 for Name): ";
    cin >> choice;

    if(choice == 1 || choice == 2){
        break;
    } else {
        cout << "Invalid input!";
    }
    }
    double avg = 0;
    if (choice == 1){
        char searchCode[4];
        cin.ignore(); // We use cin.ignore so that the getline command does not take the empty line as an input
        cout << "Enter City Code: ";
        cin.getline(searchCode, 4);

        bool found = false;
        for (int i = 0; i < cityCount; i++) {
            if (strcmp(cities[i].code, searchCode) == 0) { // If there is no difference in the given code and current indexes code, we list the data at the city
                cout << "\nCity found:\n\n";
                cout << "Name: " << cities[i].name << "\n";
                cout << "Code: " << cities[i].code << "\n";
                cout << "Temperatures: ";
                for (int j = 0; j < cities[i].readingCount; j++) { // Iterates through the temperatures within the city (array in array)
                    cout << fixed << setprecision(1) << cities[i].temperatures[j]; // Changed setprecision based on example
                    avg = avg + cities[i].temperatures[j];
                    if (j < cities[i].readingCount - 1) cout << ", ";
                }
                cout << "]\n";
                cout << "Average: " << fixed << setprecision(2) << avg/cities[i].readingCount << " C \n\n"; // Used set precision to find the average temperature to two decimal places
                found = true;
                break;
            }
        }
        if (found == false) {
        cout << "Error: No city found with code " << searchCode << ".\n\n";
    }
    }
    // This option searches by the name instead of city code
    else if (choice == 2){

        char searchName[50];
        cin.ignore(); // Used cin.ignore to prevent grabbing empty line
        cout << "Enter City Name (or press enter for overall average):";
        cin.getline(searchName, 50);

        bool found = false;
        for (int i = 0; i < cityCount; i++) {
            if (strcmp(cities[i].name, searchName) == 0) {
                cout << "\nCity Found:\n\n";
                cout << "Code: " << cities[i].code << "\n";
                cout << "Name: " << cities[i].name << "\n";
                cout << "Temperature Readings: [";
                for (int j = 0; j < cities[i].readingCount; j++) { // Iterates through the temperatures within the city (array in array)
                    cout << fixed << setprecision(1) << cities[i].temperatures[j];
                    avg = avg + cities[i].temperatures[j];
                    if (j < cities[i].readingCount - 1) cout << ", ";
                }
                cout << "]\n";
                cout << "Average: " << fixed << setprecision(2) << avg/cities[i].readingCount << " C \n\n";
                found = true;
                break;
            }
        }
        if (found == false) {
        cout << "Error: No city found with name " << searchName << ".\n\n";
    }
    }
}

// Allows us to remove cities from our data
void removeCity(City cities[], int &cityCount) {
    if (cityCount == 0) {
        cout << "No cities to remove.\n\n";
        return;
    }

    char codeToRemove[4];
    cin.ignore();
    cout << "Enter City Code to remove: ";
    cin.getline(codeToRemove, 4);

    bool found = false;
    for (int i = 0; i < cityCount; i++) { // If 
        if (strcmp(cities[i].code, codeToRemove) == 0) {
            for (int j = i; j < cityCount - 1; j++) { // Finds where the city to be removed's index is located
                cities[j] = cities[j + 1]; // Moves existing cities over to fill in empty space
            }
            cityCount--;
            found = true;
            cout << "City " << codeToRemove << " removed successfully!\n\n";
            break;
        }
    }

    if (found == false) {
        cout << "Error: No city found with code " << codeToRemove << ".\n\n";
    }
}

// Holds our menu and initializes variables
int main()
{
        cout << fixed << setprecision(2); // Sets precision globally
        City cities[100]; // Lets us have up to 100 cities
        int cityCount = 0; // Says we have 0 cities to start

    while (true) {

        int choice = 0;

        cout << "===== Weather Data Logger =====" << endl;
        cout << "1. Add City and Temperature Readings" << endl;
        cout << "2. Calculate Average Temperature" << endl;
        cout << "3. Find Hottest and Coldest Cities" << endl;
        cout << "4. Search City" << endl;
        cout << "5. Remove City Data" << endl;
        cout << "6. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;
        cout << endl;

        if (choice == 1) {

            addCity(cities, cityCount);
        }
        else if (choice == 2){

            cin.ignore();
            char input[4]; // Takes a city code
            cout << "Enter City Code (or press enter for overall average): ";
            cin.getline(input, 4);

            if (strlen(input) == 0) { // If nothing is inputted, uses our calculateAverageTemp function to find average temp of all cities
                double avg = calculateAverageTemp(cities, cityCount);
                cout << "Average temperature across all cities: " << avg << " C\n\n";
            } else {
                bool found = false;
                for (int i = 0; i < cityCount; i++) { // Iterates through cities to find matching code
                    if (strcmp(cities[i].code, input) == 0) { // Compares input to existing code, if there is no difference we find the average temperature of that location
                        double avg = calculateAverageTemp(cities[i].temperatures, cities[i].readingCount);
                        cout << "Average temperature for " << input << ": " << avg << " C\n\n";
                        found = true;
                        break;
                    }
                }
                if (found == false) {
                    cout << "Error: No city found with code " << input << ".\n\n";
                }
            }

        }
        else if (choice == 3){
            findHottestAndColdest(cities, cityCount);
        }
        else if (choice == 4){
            searchCity(cities, cityCount);
        }
        else if (choice == 5){
            removeCity(cities, cityCount);
        }
        else if (choice == 6){
            cout << "Exiting the program... Goodbye!";
            exit(0);
        }
    }
}