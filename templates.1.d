module templates_1;

import std.stdio;

void printInParens(T)(T value) {
    writefln("(%s)", value);
}

void main() {
    printInParens(42);           // with int
    printInParens(1.2);          // with double

    auto myValue = MyStruct();
    printInParens(myValue);      // with MyStruct
}

struct MyStruct {
    string toString() const {
        return "hello";
    }
}
