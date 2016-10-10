/* NOTE: This program is expected to fail compilation. */

module functions_more_4;

import std.stdio;

// This template is impure when N is zero
void templ(size_t N)() {
    static if (N == 0) {
        // Prints when N is zero:
        writeln("zero");
    }
}

void foo() pure {
    templ!0();    // ← compilation ERROR
}

void main() {
    foo();
}
