module pointers_7;

import std.stdio;

void main() {
    string[int] numbers =
        [ 0 : "zero", 1 : "one", 2 : "two", 3 : "three" ];

    int number = 2;
    auto element = number in numbers;             // (1)

    if (element) {                                // (2)
        writefln("I know: %s.", *element);        // (3)

    } else {
        writefln("I don't know the spelling of %s.", number);
    }
}
