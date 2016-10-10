module arrays_solution_1;

import std.stdio;
import std.algorithm;

void main() {
    write("How many values will be entered? ");
    int count;
    readf(" %s", &count);

    double[] values;
    values.length = count;

    // The counter is commonly named as 'i'
    int i;
    while (i < count) {
        write("Value ", i, ": ");
        readf(" %s", &values[i]);
        ++i;
    }

    writeln("In sorted order:");
    sort(values);

    i = 0;
    while (i < count) {
        write(values[i], " ");
        ++i;
    }
    writeln();

    writeln("In reverse order:");
    reverse(values);

    i = 0;
    while (i < count) {
        write(values[i], " ");
        ++i;
    }
    writeln();
}
