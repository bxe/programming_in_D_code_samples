module function_parameters_14;

import std.stdio;

int valueOfArgument() {
    writeln("Calculating...");
    return 1;
}

void functionWithLazyParameter(lazy int value) {
    int result = value + value + value;
    writeln(result);
}

void main() {
    functionWithLazyParameter(valueOfArgument());
}
