module function_parameters_7;

import std.stdio;

int divide(in int dividend, in int divisor, out int remainder) {
    remainder = dividend % divisor;
    return dividend / divisor;
}

void main() {
    int remainder;
    int result = divide(7, 3, remainder);

    writeln("result: ", result, ", remainder: ", remainder);
}
