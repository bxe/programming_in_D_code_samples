module while_2;

import std.stdio;

void main() {
    int number;

    while (number >= 0) {
        write("Please enter a number: ");
        readf(" %s", &number);

        writeln("Thank you for ", number);
    }

    writeln("Exited the loop");
}
