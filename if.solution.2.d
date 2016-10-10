module if_solution_2;

import std.stdio;

void main() {
    write("What is the value of the die? ");
    int die;
    readf(" %s", &die);

    if (die == 1) {
        writeln("You won");

    } else if (die == 2) {
        writeln("You won");

    } else if (die == 3) {
        writeln("You won");

    } else if (die == 4) {
        writeln("I won");

    } else if (die == 5) {
        writeln("I won");

    } else if (die == 6) {
        writeln("I won");

    } else {
        writeln("ERROR: ", die, " is invalid");
    }
}
