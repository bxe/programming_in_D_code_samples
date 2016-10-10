module ufcs_3;

// Returns the result of dividing all of the elements by
// 'divisor'
int[] divide(int[] slice, int divisor) {
    int[] result;

    foreach (value; slice) {
        result ~= value / divisor;
    }

    return result;
}

// Returns the result of multiplying all of the elements by
// 'multiplier'
int[] multiply(int[] slice, int multiplier) {
    int[] result;

    foreach (value; slice) {
        result ~= value * multiplier;
    }

    return result;
}

// Filters out elements that have odd values
int[] evens(int[] slice) {
    int[] result;

    foreach (value; slice) {
        if (!(value % 2)) {
            result ~= value;
        }
    }

    return result;
}
import std.stdio;

// ...

void main() {
    auto values = [ 1, 2, 3, 4, 5 ];
    writeln(evens(divide(multiply(values, 10), 3)));
}
