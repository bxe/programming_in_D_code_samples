module lvalue_rvalue_1;

import std.stdio;

void main() {
    int i;
    immutable(int) imm;
    auto arr = [ 1 ];
    auto aa = [ 10 : "ten" ];

    /* All of the following arguments are lvalues. */

    writeln(i,          // mutable variable
            imm,        // immutable variable
            arr,        // array
            arr[0],     // array element
            aa[10]);    // associative array element
                        // etc.

    enum message = "hello";

    /* All of the following arguments are rvalues. */

    writeln(42,               // a literal
            message,          // a manifest constant
            i + 1,            // a temporary value
            calculate(i));    // return value of a function
                              // etc.
}

int calculate(int i) {
    return i * 2;
}
