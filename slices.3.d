module slices_3;

import std.stdio;

void main() {
    int[] slice = [ 1, 3, 5, 7, 9, 11, 13, 15 ];
    int[] half = slice[0 .. $ / 2];
    int[] quarter = slice[0 .. $ / 4];

    slice ~= 42;      // adding to the longest slice ...
    slice[1] = 0;     // ... and then modifying an element

    writeln(quarter);
    writeln(half);
    writeln(slice);
}
