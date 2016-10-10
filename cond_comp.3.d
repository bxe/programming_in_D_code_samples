module cond_comp_3;

import std.stdio;
debug import std.stdio;

void myFunction(string fileName, int[] values) {
    debug(1) writeln("entered myFunction");

    debug(2) {
        writeln("the arguments:");
        writeln("  file name: ", fileName);

        foreach (i, value; values) {
            writefln("  %4s: %s", i, value);
        }
    }

    // ... the implementation of the function ...
}

void main() {
    myFunction("deneme.txt", [ 10, 4, 100 ]);
}
