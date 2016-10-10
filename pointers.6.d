module pointers_6;

import std.stdio;

struct Struct {
}

class Class {
}

void main() {
    writeln(typeof(new int   ).stringof);
    writeln(typeof(new int[5]).stringof);
    writeln(typeof(new Struct).stringof);
    writeln(typeof(new Class ).stringof);
}
