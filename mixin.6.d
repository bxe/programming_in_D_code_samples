module mixin_6;

import std.stdio;

string printStatement(string message) {
    return `writeln("` ~ message ~ `");`;
}

void main() {
    mixin (printStatement("hello world"));
    mixin (printStatement("hi world"));
}
