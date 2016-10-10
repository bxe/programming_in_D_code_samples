module strings_solution_1;

import std.stdio;
import std.string;

void main() {
    write("First name: ");
    string first = capitalize(chomp(readln()));

    write("Last name: ");
    string last = capitalize(chomp(readln()));

    string fullName = first ~ " " ~ last;
    writeln(fullName);
}
