module pointers_10;

import std.stdio;
import std.stdio;

void printBytes(T)(ref T variable) {
    const ubyte * begin = cast(ubyte*)&variable;    // (1)

    writefln("type   : %s", T.stringof);
    writefln("value  : %s", variable);
    writefln("address: %s", begin);                 // (2)
    writef  ("bytes  : ");

    writefln("%(%02x %)", begin[0 .. T.sizeof]);    // (3)

    writeln();
}
struct Struct {
    int first;
    int second;
}

class Class {
    int i;
    int j;
    int k;

    this(int i, int j, int k) {
        this.i = i;
        this.j = j;
        this.k = k;
    }
}

void main() {
    int integerVariable = 0x11223344;
    printBytes(integerVariable);

    double doubleVariable = double.nan;
    printBytes(doubleVariable);

    string slice = "a bright and charming façade";
    printBytes(slice);

    int[3] array = [ 1, 2, 3 ];
    printBytes(array);

    auto structObject = Struct(0xaa, 0xbb);
    printBytes(structObject);

    auto classVariable = new Class(1, 2, 3);
    printBytes(classVariable);
}
