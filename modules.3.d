module deneme;

import std.stdio;
import core.demangle;

void foo() {
}

void main() {
    writeln(mangle!(typeof(foo))("deneme.foo"));
}
