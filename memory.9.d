module memory_9;

import std.stdio;

struct S {
    int i;

    this(int i) {
        this.i = i;
        writefln("Constructing object with value %s", i);
    }

    ~this() {
        writefln("Destroying object with value %s", i);
    }
}

void main() {
    auto p = new S(42);

    writeln("Before destroy()");
    destroy(p);                        // ← WRONG USAGE
    writeln("After destroy()");

    writefln("p: %s", p);

    writeln("Leaving main");
}
