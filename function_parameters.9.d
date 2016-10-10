module function_parameters_9;

import std.stdio;

dchar lastLetter(const dchar[] str) {
    return str[$ - 1];
}

void main() {
    writeln(lastLetter("constant"));
}
