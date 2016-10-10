module ranges_7;

import std.stdio;
import std.range;
import std.random;

void main() {
    auto diceThrower = generate!(() => uniform(0, 6));
    writeln(diceThrower.take(10));
}
