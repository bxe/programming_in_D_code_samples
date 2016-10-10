/* NOTE: This program is expected to fail compilation. */

module function_parameters_19;

import std.random;

ref int pick(return ref int lhs, return ref int rhs) {
    return uniform(0, 2) ? lhs : rhs;
}

ref int foo() {
    int a;
    int b;

    return pick(a, b);    // ← compilation ERROR
}

void main() {
    foo() = 42;
}
