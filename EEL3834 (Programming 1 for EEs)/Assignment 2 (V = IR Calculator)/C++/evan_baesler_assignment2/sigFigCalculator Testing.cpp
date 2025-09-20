#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int sigFigCalculator(double input) {

    string inputConverter = to_string(input);
    bool passedNonZero = false;

    while (inputConverter[0] == '0' || inputConverter[0] == '.') {

        inputConverter = inputConverter.erase(0, 1);

    }

    int length = inputConverter.length();


    return(length);

}

int main() {

    int output = sigFigCalculator(25.05);
    cout << output;

    return(0);
}