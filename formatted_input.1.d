module formatted_input_1;

import std.stdio;

void main() {
    write("First name: ");
    string firstName;
    readf(" %s\n", &firstName);    // ← \n at the end

    write("Last name : ");
    string lastName;
    readf(" %s\n", &lastName);     // ← \n at the end

    write("Age       : ");
    int age;
    readf(" %s", &age);

    writefln("%s %s (%s)", firstName, lastName, age);
}
