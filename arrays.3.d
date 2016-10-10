module arrays_3;

import std.stdio;

void main() {
    int[10] first = 1;
    int[10] second = 2;
    int[] result;

    result = first ~ second;
    writeln(result.length);     // prints 20

    result ~= first;
    writeln(result.length);     // prints 30
}
