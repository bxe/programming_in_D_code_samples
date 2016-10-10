module function_parameters_5;

import std.stdio;

void appendElement(int[string] aa) {
    aa["red"] = 100;
    writefln("Inside appendElement()       : %s", aa);
}

void main() {
    int[string] aa;    // ← null to begin with
    appendElement(aa);
    writefln("After appendElement() returns: %s", aa);
}
