module ternary_solution_1;

import std.stdio;

void main() {
    write("Please enter the net amount: ");

    int amount;
    readf(" %s", &amount);

    writeln("$",
            amount < 0 ? -amount : amount,
            amount < 0 ? " lost" : " gained");
}
