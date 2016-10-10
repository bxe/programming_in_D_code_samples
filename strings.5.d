module strings_5;

import std.stdio;

void main() {
    char[] s = "hello".dup;
    s[0] = 'H';
    writeln(s);
}
