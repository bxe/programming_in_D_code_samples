module functions_more_8;

import std.stdio;

size_t counter;

int foo() {
    if (!__ctfe) {
        // This code is for execution at run time
        ++counter;
    }

    return 42;
}

void main() {
    enum i = foo();
    auto j = foo();
    writefln("foo is called %s times.", counter);
}
