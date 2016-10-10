/* NOTE: This program is expected to fail compilation. */

module lvalue_rvalue_2;

import std.stdio;

void main() {
    int a;
    int b;

    readf(" %s", &a);          // compiles
    readf(" %s", &(a + b));    // ← compilation ERROR
}
