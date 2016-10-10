module for_solution_2;

import std.stdio;

void main() {
    for (int line = 0; line != 5; ++line) {
        int length = line + 1;

        for (int i = 0; i != length; ++i) {
            write('*');
        }

        writeln();
    }
}
