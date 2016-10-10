module formatted_input_solution_1;

import std.stdio;

void main() {
    int year;
    int month;
    int day;

    readf("%s.%s.%s", &year, &month, &day);

    writeln("Month: ", month);
}
