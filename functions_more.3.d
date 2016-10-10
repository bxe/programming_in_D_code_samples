/* NOTE: This program is expected to fail compilation. */

module functions_more_3;

import std.stdio;
import std.exception;

int mutableGlobal;
const int constGlobal;
immutable int immutableGlobal;

void impureFunction() {
}

int pureFunction(ref int i, int[] slice) pure {
    // Can throw exceptions:
    enforce(slice.length >= 1);

    // Can mutate its parameters:
    i = 42;
    slice[0] = 43;

    // Can access immutable global state:
    i = constGlobal;
    i = immutableGlobal;

    // Can use the new expression:
    auto p = new int;

    // Cannot access mutable global state:
    i = mutableGlobal;    // ← compilation ERROR

    // Cannot perform input and output operations:
    writeln(i);           // ← compilation ERROR

    static int mutableStatic;

    // Cannot access mutable static state:
    i = mutableStatic;    // ← compilation ERROR

    // Cannot call impure functions:
    impureFunction();     // ← compilation ERROR

    return 0;
}

void main() {
    int i;
    int[] slice = [ 1 ];
    pureFunction(i, slice);
}
