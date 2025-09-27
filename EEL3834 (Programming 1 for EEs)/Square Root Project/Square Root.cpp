#include <iostream>
#include <cmath>
using namespace std;

int main() 
{
    for (int i = 1; i <= 1000; i++) {
        double numTrack = sqrt(i); // better to declare inside loop
        cout << numTrack << endl;  // added endl to ensure output appears line-by-line
    }
    return 0;
}