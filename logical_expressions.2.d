/* NOTE: This program is expected to fail compilation. */

module logical_expressions_2;

import std.stdio;

void main() {
    int value = 15;

    writeln("Is between: ",
            10 < value < 20);        // ← compilation ERROR
}
