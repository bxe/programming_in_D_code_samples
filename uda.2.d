module uda_2;

import std.stdio;
struct Encrypted {
}

enum Color { black, blue, red }

struct Colored {
    Color color;
}

void RENAMED_main() {
    @Encrypted           int a;    // type name
    @Encrypted()         int b;    // object
    @Colored(Color.blue) int c;    // object
    @(42)                int d;    // literal (discouraged)
}
import std.stdio;

// ...

struct Person {
    @Encrypted @Colored(Color.blue) string name;
    string lastName;
    @Colored(Color.red) string address;
}

void RENAMED_main() {
    foreach (attr; __traits(getAttributes, Person.name)) {
        writeln(attr.stringof);
    }
}
import std.string;

// ...

void main() {
    foreach (memberName; __traits(allMembers, Person)) {
        writef("The attributes of %-8s:", memberName);

        foreach (attr; __traits(getAttributes,
                                __traits(getMember,
                                         Person, memberName))) {
            writef(" %s", attr.stringof);
        }

        writeln();
    }
}
