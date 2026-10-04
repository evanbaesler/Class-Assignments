#include <iostream>
#include <string>
#include <limits>

using namespace std;

class Rectangle {
private:
    int x;
    int y;
    int width;
    int height;

public:
    Rectangle(int xVal = 0, int yVal = 0, int w = 0, int h = 0)
        : x(xVal), y(yVal), width(w), height(h) {}

    void setProperties(int xVal, int yVal, int w, int h) {
        if (w > 0 && h > 0) {
            x = xVal;
            y = yVal;
            width = w;
            height = h;
        } else {
            cout << "Width and height must be positive." << endl;
        }
    }

    void move(int xOffset, int yOffset) {
        x += xOffset;
        y += yOffset;
    }

    void resize(int w, int h) {
        if (w > 0 && h > 0) {
            width = w;
            height = h;
        } else {
            cout << "Width and height must be positive." << endl;
        }
    }

    void rotate() {
        int temp = width;
        width = height;
        height = temp;
    }

    int getX() const { return x; }
    int getY() const { return y; }
    int getWidth() const { return width; }
    int getHeight() const { return height; }

    void printProperties(int rectNum) const {
        cout << "Rectangle " << rectNum << " - Corner: (" << x << ", " << y
             << "), Width: " << width << ", Height: " << height;
    }
};

class ColoredRectangle : public Rectangle {
private:
    string color;

public:
    ColoredRectangle(int xVal = 0, int yVal = 0, int w = 0, int h = 0, const string& col = "none")
        : Rectangle(xVal, yVal, w, h), color(col) {}

    void setColor(const string& col) {
        color = col;
    }

    string getColor() const {
        return color;
    }
    // Function calls rectangle to print properties, checks to see if color is necessary
    void printProperties(int rectNum) const {
        Rectangle::printProperties(rectNum);
        if (color != "none") {
            cout << ", Color: " << color;
        }
        cout << endl << endl;
    }
};

// Gets the rectangle that is being editted//called
int getRectangleChoice() {
    int rectChoice;
    while (true) {
        cout << "Which rectangle? (1-3): ";
        string input;
        getline(cin, input);
        try {
            rectChoice = stoi(input);
            if (rectChoice >= 1 && rectChoice <= 3) {
                return rectChoice;
            } else {
                cout << "Invalid rectangle number!" << endl;
            }
        } catch (...) {
            cout << "Invalid rectangle number!" << endl;
        }
    }
}

// Checks if a string can be split into two numbers
bool splitString(const string& input, int& a, int& b) {
    int spacePosition = (int)input.find(' ');

    // Must have exactly one space, checks for 
    if (spacePosition == -1 || spacePosition == 0 || spacePosition == (int)input.length() - 1)
    return false;

    string first = input.substr(0, spacePosition);
    string second = input.substr(spacePosition + 1);

    try {
        a = stoi(first);
        b = stoi(second);
    } catch (...) {
        return false;
    }

    return true;
}


void setProperties(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();

    while (true) {
        cout << "Enter x, y, width, and height: ";
        string input;
        getline(cin, input);

        string values[4];
        int found = 0;
        string temp;

        for (char c : input) {
            if (c == ' ') {
                if (!temp.empty() && found < 4) {
                    values[found++] = temp;
                    temp.clear();
                }
            } else {
                temp += c;
            }
        }
        if (!temp.empty() && found < 4) {
            values[found++] = temp;
        }

        if (found != 4) {
            cout << "Incorrect amount of inputs." << endl;
            continue;
        }

        int x, y, width, height;
        try {
            x = stoi(values[0]);
            y = stoi(values[1]);
            width = stoi(values[2]);
            height = stoi(values[3]);
        } catch (...) {
            cout << "Invalid input! Please enter numbers." << endl;
            continue;
        }

        if (width <= 0 || height <= 0) {
            cout << "Width and height must be positive." << endl;
            continue;
        }

        rectangles[rectChoice - 1].setProperties(x, y, width, height);
        cout << "Rectangle " << rectChoice << "'s properties are now: Corner (" << x << ", " << y
             << "), Width " << width << ", Height " << height << endl << endl;
        break;
    }
}

void setColor(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();
    cout << "Enter color: ";
    string color;
    getline(cin, color);
    rectangles[rectChoice - 1].setColor(color);
    cout << "Color set to " << color << " for Rectangle " << rectChoice << "." << endl << endl;
}

void moveRectangle(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();
    int xOffset, yOffset;

    while (true) {
        cout << "Enter the amount to move in x and y directions: ";
        string input;
        getline(cin, input);

        if (!splitString(input, xOffset, yOffset)) {
            cout << "Invalid input! Please enter numbers only." << endl;
            continue;
        }

        rectangles[rectChoice - 1].move(xOffset, yOffset);
        cout << "Rectangle " << rectChoice << "'s new position: Corner (" 
             << rectangles[rectChoice - 1].getX() << ", "
             << rectangles[rectChoice - 1].getY() << ")" << endl << endl;
        break;
    }
}

void resizeRectangle(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();
    int width, height;

    while (true) {
        cout << "Enter the new width and height: ";
        string input;
        getline(cin, input);

        if (!splitString(input, width, height)) {
            cout << "Invalid input! Please enter numbers only." << endl;
            continue;
        }

        if (width <= 0 || height <= 0) {
            cout << "Width and height must be positive." << endl;
            continue;
        }

        rectangles[rectChoice - 1].resize(width, height);
        cout << "Rectangle " << rectChoice << "'s new dimensions: Width " << w << ", Height " << h << endl << endl;
        break;
    }
}

void rotateRectangle(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();
    rectangles[rectChoice - 1].rotate();
    cout << "Rotating Rectangle " << rectChoice << " by 90 degrees..." << endl;
    rectangles[rectChoice - 1].printProperties(rectChoice);
}

void printProperties(ColoredRectangle rectangles[]) {
    int rectChoice = getRectangleChoice();
    rectangles[rectChoice - 1].printProperties(rectChoice);
}

int main() {
    ColoredRectangle rectangles[3];

    while (true) {
        cout << "Choose from the following options:" << endl;
        cout << "s: Set a rectangle's properties" << endl;
        cout << "c: Set a rectangle's color" << endl;
        cout << "m: Move a rectangle" << endl;
        cout << "z: Resize a rectangle" << endl;
        cout << "r: Rotate a rectangle" << endl;
        cout << "p: Print a rectangle's properties" << endl;
        cout << "q: Quit" << endl << endl;

        cout << "Enter choice: ";
        string choice;
        getline(cin, choice);

        if (choice == "s" || choice == "S") {
            setProperties(rectangles);
        } else if (choice == "c" || choice == "C") {
            setColor(rectangles);
        } else if (choice == "m" || choice == "M") {
            moveRectangle(rectangles);
        } else if (choice == "z" || choice == "Z") {
            resizeRectangle(rectangles);
        } else if (choice == "r" || choice == "R") {
            rotateRectangle(rectangles);
        } else if (choice == "p" || choice == "P") {
            printProperties(rectangles);
        } else if (choice == "q" || choice == "Q") {
            cout << "Exiting program. Goodbye!" << endl;
            break;
        } else {
            cout << "That is not a valid option." << endl << endl;
        }
    }

    return 0;
}
