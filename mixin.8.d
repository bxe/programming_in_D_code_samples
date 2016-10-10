module mixin_8;

import std.stdio;

template Templ() {
    int i;

    void print() {
        writeln(i);  // Always the 'i' that is defined in Templ
    }
}

void main() {
    int i;
    mixin Templ;

    i = 42;      // Sets the 'i' that is defined explicitly in main
    writeln(i);  // Prints the 'i' that is defined explicitly in main
    print();     // Prints the 'i' that is mixed in
}
