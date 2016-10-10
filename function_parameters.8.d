module function_parameters_8;

import std.stdio;

void foo(out int parameter) {
    writeln("After entering the function      : ", parameter);
}

void main() {
    int variable = 100;

    writeln("Before calling the function      : ", variable);
    foo(variable);
    writeln("After returning from the function: ", variable);
}
