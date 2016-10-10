module tuples_5;

import std.stdio;

struct S {
    int number;
    string message;
    double value;
}

void main() {
    foreach (i, MemberType; typeof(S.tupleof)) {
        writefln("Member %s:", i);
        writefln("  type: %s", MemberType.stringof);

        string name = S.tupleof[i].stringof;
        writefln("  name: %s", name);
    }
}
