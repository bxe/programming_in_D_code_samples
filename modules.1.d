module modules_1;

import std.stdio;
string makeGreeting(string name) {
    import std.string;

    string greeting = format("Hello %s", name);
    return greeting;
}

void interactWithUser() {
    import std.stdio;

    write("Please enter your name: ");
    string name = readln();
    writeln(makeGreeting(name));
}

void main() {
    interactWithUser();
}
