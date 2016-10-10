/* NOTE: This program is expected to fail compilation. */

module ranges_3;

import std.stdio;
void print(T)(T range) {
    for ( ; !range.empty; range.popFront()) {  // ← compilation ERROR
        write(' ', range.front);
    }

    writeln();
}

void main() {
    int[4] array = [ 1, 2, 3, 4 ];
    print(array);
}
