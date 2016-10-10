module strings_2;

import std.stdio;

void main() {
    char[] name;

    write("What is your name? ");
    readln(name);

    writeln("Hello ", name, "!");
}
