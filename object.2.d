module object_2;

import std.stdio;

int foo(string when) {
    writefln("Called during '%s'.", when);
    return 0;
}

void main() {
    const s = foo("sizeof").sizeof;     // foo() is not called
    alias T = typeof(foo("typeof"));    // foo() is not called
    auto ti = typeid(foo("typeid"));    // foo() is called
}
