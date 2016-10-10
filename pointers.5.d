module pointers_5;

import std.stdio;

void tenTimes(int * begin, int * end) {
    while (begin != end) {
        *begin *= 10;
        ++begin;
    }
}

void main() {
    int[] values = [ 0, 1, 2, 3 ];

    // The address of the second element:
    int * begin = &values[1];

    // The address of two elements beyond that one
    tenTimes(begin, begin + 2);

    writeln(values);
}
