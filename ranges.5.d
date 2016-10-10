module ranges_5;

import std.array;
import std.string;

void main() {
    char[] s = "hello".dup;
    s.representation.front = 'H';    // compiles
    assert(s == "Hello");
}
