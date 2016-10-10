module floating_point_solution_1;

import std.stdio;

void main() {
    double value_1;
    double value_2;
    double value_3;
    double value_4;
    double value_5;

    write("Value 1: ");
    readf(" %s", &value_1);
    write("Value 2: ");
    readf(" %s", &value_2);
    write("Value 3: ");
    readf(" %s", &value_3);
    write("Value 4: ");
    readf(" %s", &value_4);
    write("Value 5: ");
    readf(" %s", &value_5);

    writeln("Twice the values:");
    writeln(value_1 * 2);
    writeln(value_2 * 2);
    writeln(value_3 * 2);
    writeln(value_4 * 2);
    writeln(value_5 * 2);

    writeln("One fifth the values:");
    writeln(value_1 / 5);
    writeln(value_2 / 5);
    writeln(value_3 / 5);
    writeln(value_4 / 5);
    writeln(value_5 / 5);
}
