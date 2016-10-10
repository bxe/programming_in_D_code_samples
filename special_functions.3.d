module special_functions_3;

import std.stdio;

struct S {
    this(int i) {
        writeln("Constructing an object");
    }

    this(int i) const {
        writeln("Constructing a const object");
    }

    this(int i) immutable {
        writeln("Constructing an immutable object");
    }

    // We will see the 'shared' keyword in a later chapter.
    this(int i) shared {
        writeln("Constructing a shared object");
    }
}

void main() {
    auto m = S(1);
    const c = S(2);
    immutable i = S(3);
    shared s = S(4);
}
