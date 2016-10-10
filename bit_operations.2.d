module bit_operations_2;

import std.stdio;

void print(uint number) {
    writefln("%032b %08x %10s", number, number, number);
}

void main() {
    print(123456789);
}
