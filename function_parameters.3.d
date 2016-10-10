module function_parameters_3;

import std.stdio;

void makeFirstLetterDot(dchar[] str) {
    str[0] = '.';
}

void main() {
    dchar[] str = "abc"d.dup;
    makeFirstLetterDot(str);
    writeln(str);
}
