/* NOTE: This program is expected to fail compilation. */

module const_and_immutable_5;

import std.stdio;

void main() {
    immutable int[] slice = [ 10, 20, 30, 40 ];
    print(slice);    // ← compilation ERROR
}

void print(int[] slice) {
    writefln("%s elements: ", slice.length);

    foreach (i, element; slice) {
        writefln("%s: %s", i, element);
    }
}
