module cast_2;

import std.stdio;

void foo() {
    int[2] array = [ 1, 2 ];
    bar(array);    // Passes fixed-length array as a slice
}

void bar(int[] slice) {
    writeln(slice);
}

void main() {
    foo();
}
