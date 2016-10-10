module strings_7;

import std.stdio;
import std.string;

void main() {
    write("What is your name? ");
    string name = chomp(readln());

    // Concatenate:
    string greeting = "Hello " ~ name;

    // Append:
    greeting ~= "! Welcome...";

    writeln(greeting);
}
