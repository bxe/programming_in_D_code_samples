module if_solution_3;

import std.stdio;

void main() {
    write("What is the value of the die? ");
    int die;
    readf(" %s", &die);

    if ((die == 1) || (die == 2) || (die == 3)) {
        writeln("You won");

    } else if ((die == 4) || (die == 5) || (die == 6)) {
        writeln("I won");

    } else {
        writeln("ERROR: ", die, " is invalid");
    }
}
