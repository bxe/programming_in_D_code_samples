/* NOTE: This program is expected to fail compilation. */

module ranges_4;

import std.array;

void main() {
    char[] s = "hello".dup;
    s.front = 'H';                   // ← compilation ERROR
}
