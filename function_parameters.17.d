module function_parameters_17;

import std.stdio;
import std.random;

ref int pick(ref int lhs, ref int rhs) {
    return uniform(0, 2) ? lhs : rhs;
}

void main() {
    int a;
    int b;

    pick(a, b) = 42;

    writefln("a: %s, b: %s", a, b);
}
