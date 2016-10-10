module function_parameters_4;

import std.stdio;

void appendZero(int[] arr) {
    arr ~= 0;
    writefln("Inside appendZero()       : %s", arr);
}

void main() {
    auto arr = [ 1, 2 ];
    appendZero(arr);
    writefln("After appendZero() returns: %s", arr);
}
