module functions_more_5;

import std.stdio;

debug size_t fooCounter;

void foo(int i) pure {
    debug ++fooCounter;

    if (i == 0) {
        debug writeln("i is zero");
        i = 42;
    }

    // ...
}

void main() {
    foreach (i; 0..100) {
        if ((i % 10) == 0) {
            foo(i);
        }
    }

    debug writefln("foo is called %s times", fooCounter);
}
