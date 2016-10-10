module pointers_11;

import std.stdio;
import std.ascii;

void printMemory(T)(T * location, size_t length) {
    const ubyte * begin = cast(ubyte*)location;

    foreach (address; begin .. begin + length) {
        char c = (isPrintable(*address) ? *address : '.');

        writefln("%s:  %02x  %s", address, *address, c);
    }
}
import std.stdio;

void main() {
    string s = "a bright and charming façade";
    printMemory(s.ptr, s.length);
}
