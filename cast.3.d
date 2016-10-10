module cast_3;

import std.stdio;

void foo() {
    int[2] array = [ 1, 2 ];
    bar(array);    // Passes fixed-length array as a slice

}  // ← NOTE: 'array' is not valid beyond this point

int[] sliceForLaterUse;

void bar(int[] slice) {
    // Saves a slice that is about to become invalid
    sliceForLaterUse = slice;
    writefln("Inside bar : %s", sliceForLaterUse);
}

void main() {
    foo();

    /* BUG: Accesses memory that is not array elements anymore */
    writefln("Inside main: %s", sliceForLaterUse);
}
