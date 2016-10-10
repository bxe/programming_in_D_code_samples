module formatted_output_solution_1;

import std.stdio;

void main() {
    writeln("(Enter 0 to exit the program.)");

    while (true) {
        write("Please enter a number: ");
        long number;
        readf(" %s", &number);

        if (number == 0) {
            break;
        }

        writefln("%1$d <=> %1$#x", number);
    }
}
