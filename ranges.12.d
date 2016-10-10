module ranges_12;

import std.stdio;
import std.range;

void main() {
    int[] slice = [ 1, 2, 3 ];
    int[] slice2 = slice;

    put(slice2, 100);

    writeln(slice2);
    writeln(slice);
}
