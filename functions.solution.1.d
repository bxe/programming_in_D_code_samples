module functions_solution_1;

import std.stdio;

void printMenu(string[] items, int firstNumber) {
    foreach (i, item; items) {
        writeln(' ', i + firstNumber, ' ', item);
    }
}

void main() {
    string[] items =
        [ "Black", "Red", "Green", "Blue", "White" ];
    printMenu(items, 1);
}
