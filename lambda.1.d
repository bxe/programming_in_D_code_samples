module lambda_1;

import std.stdio;

int myFunction(char c, double d) {
    return 42;
}

void main() {
    myTemplate(&myFunction);    // Taking the function's address and
                                // passing it as a parameter
}

void myTemplate(T)(T parameter) {
    writeln("type : ", T.stringof);
    writeln("value: ", parameter);
}
