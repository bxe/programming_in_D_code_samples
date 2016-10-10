module characters_4;

import std.stdio;

void main() {
    char firstCode;
    char secondCode;

    write("Please enter a letter: ");
    readf(" %s", &firstCode);
    readf(" %s", &secondCode);

    writeln("The letter that has been read: ",
            firstCode, secondCode);
}
