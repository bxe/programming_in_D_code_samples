module is_expr_2;

import std.stdio;

void myFunction(T)(T parameter) {
    writefln("\n--- Called with %s ---", T.stringof);

    static if (is (T == Value[Key],
                   Value,
                   Key : string)) {

        writeln("Yes, the condition has been satisfied.");

        writeln("The value type: ", Value.stringof);
        writeln("The key type  : ", Key.stringof);

    } else {
        writeln("No, the condition has not been satisfied.");
    }
}

void main() {
    int number;
    myFunction(number);

    int[string] intTable;
    myFunction(intTable);

    double[string] doubleTable;
    myFunction(doubleTable);

    dchar[long] dcharTable;
    myFunction(dcharTable);
}
