module while_6;

import std.stdio;

void main() {
    int number;

    while (number == 3) {
        write("Number? ");
        readf(" %s", &number);
    }
}
