module formatted_output_solution_2;

import std.stdio;

void main() {
    write("Please enter the percentage value: ");
    double percentage;
    readf(" %s", &percentage);

    writefln("%%%.2f", percentage);
}
