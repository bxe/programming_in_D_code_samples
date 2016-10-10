module unit_testing_3;

import std.exception;
import std.string;

dstring ordinalSpelled(dstring number) {
    enforce(number.length, "number cannot be empty");

    dstring[dstring] exceptions = [
        "one": "first", "two" : "second", "three" : "third",
        "five" : "fifth", "eight": "eighth", "nine" : "ninth",
        "twelve" : "twelfth"
    ];

    dstring result;

    if (number in exceptions) {
        result = exceptions[number];

    } else {
        result = number ~ "th";
    }

    return result;
}

unittest {
    assert(ordinalSpelled("one") == "first");
    assert(ordinalSpelled("two") == "second");
    assert(ordinalSpelled("three") == "third");
    assert(ordinalSpelled("ten") == "tenth");
}

void main() {
}
