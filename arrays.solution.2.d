module arrays_solution_2;

import std.stdio;
import std.algorithm;

void main() {
    // Using dynamic arrays because it is not known how many
    // values are going to be read from the input
    int[] odds;
    int[] evens;

    writeln("Please enter integers (-1 to terminate):");

    while (true) {

        // Reading the value
        int value;
        readf(" %s", &value);

        // The special value of -1 breaks the loop
        if (value == -1) {
            break;
        }

        // Adding to the corresponding array, depending on
        // whether the value is odd or even. It is an even
        // number if there is no remainder when divided by 2.
        if ((value % 2) == 0) {
            evens ~= value;

        } else {
            odds ~= value;
        }
    }

    // The odds and evens arrays are sorted separately
    sort(odds);
    sort(evens);

    // The two arrays are then appended to form a new array
    int[] result;
    result = odds ~ evens;

    writeln("First the odds then the evens, sorted:");

    // Printing the array elements in a loop
    int i;
    while (i < result.length) {
        write(result[i], " ");
        ++i;
    }

    writeln();
}
