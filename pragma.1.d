module pragma_1;

import std.string;

void func(A, B)(A a, B b) {
    pragma(msg, format("Called with types '%s' and '%s'",
                       A.stringof, B.stringof));
    // ...
}

void main() {
    func(42, 1.5);
    func("hello", 'a');
}
