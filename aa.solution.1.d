module aa_solution_1;

import std.stdio;

void main() {
    string[int] names =
    [
        1   : "one",
        10  : "ten",
        100 : "hundred",
    ];

    writeln("Initial length: ", names.length);

    int[] keys = names.keys;

    /* 'foreach' is similar but superior to 'for'. We will
     * see the 'foreach' loop in the next chapter. */
    foreach (key; keys) {
        writefln("Removing the element %s", key);
        names.remove(key);
    }

    writeln("Final length: ", names.length);
}
