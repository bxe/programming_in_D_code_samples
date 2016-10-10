module cond_comp_2;

import std.stdio;

// WARNING! This algorithm is wrong
size_t binarySearch(const int[] values, in int value) {
    if (values.length == 0) {
        return size_t.max;
    }

    immutable midPoint = values.length / 2;

    if (value == values[midPoint]) {
        return midPoint;

    } else if (value < values[midPoint]) {
        return binarySearch(values[0 .. midPoint], value);

    } else {
        return binarySearch(values[midPoint + 1 .. $], value);
    }
}

void main() {
    auto numbers = [ -100, 0, 1, 2, 7, 10, 42, 365, 1000 ];

    auto index = binarySearch(numbers, 42);
    writeln("Index: ", index);
}
