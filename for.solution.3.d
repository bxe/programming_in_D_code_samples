module for_solution_3;

import std.stdio;

void main() {
    for (int line = 0; line != 5; ++line) {
        for (int i = 0; i != line; ++i) {
            write(' ');
        }

        writeln("********");
    }
}
