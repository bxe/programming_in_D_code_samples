module strings_3;

import std.stdio;
import std.string;

void main() {
    char[] name;

    write("What is your name? ");
    readln(name);
    name = chomp(name);

    writeln("Hello ", name, "!");
}
