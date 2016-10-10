module slices_2;

import std.stdio;

void main() {
    int[] slice = [ 1, 3, 5, 7, 9, 11, 13, 15 ];
    int[] half = slice[0 .. $ / 2];
    int[] quarter = slice[0 .. $ / 4];

    quarter[1] = 0;     // modify through one slice

    writeln(quarter);
    writeln(half);
    writeln(slice);
}
