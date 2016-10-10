module special_functions_2;

import std.stdio;

struct S {
    this(int i) {
        writeln("Constructing an object");
    }
}

void main() {
    auto m = S(1);
    const c = S(2);
    immutable i = S(3);
    shared s = S(4);
}
