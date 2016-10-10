module strings_4;

import std.stdio;
import std.string;
import std.format;

void main() {
    write("Please enter your name and age," ~
          " separated with a space: ");

    string line = chomp(readln());

    string name;
    int age;
    formattedRead(line, " %s %s", &name, &age);

    writeln("Your name is ", name,
            ", and your age is ", age, '.');
}
