module pointers_2;

import std.stdio;

void addHalf(double value) {
    value += 0.5;        // ← Does not affect 'value' in main
}

void main() {
    double value = 1.5;

    addHalf(value);

    writeln("The value after calling the function: ", value);
}
