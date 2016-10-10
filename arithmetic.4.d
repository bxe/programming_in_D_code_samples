module arithmetic_4;

import std.stdio;

void main() {
    // 3 billion each
    uint first = 3000000000;
    uint second = 3000000000;

    writeln("maximum value of uint: ", uint.max);
    writeln("                first: ", first);
    writeln("               second: ", second);
    writeln("                  sum: ", first + second);
    writeln("OVERFLOW! The result is not 6 billion!");
}
