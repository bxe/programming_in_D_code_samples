module function_overloading_1;

import std.stdio;

void info(in double number) {
    writeln("Floating point: ", number);
}

void info(in int number) {
    writeln("Integer       : ", number);
}

void info(in char[] str) {
    writeln("String        : ", str);
}

void main() {
    info(1.2);
    info(3);
    info("hello");
}
