module operator_overloading_6;

import std.stdio;

struct Foo {
    void opDispatch(string name, T)(T parameter) {
        writefln("Foo.opDispatch - name: %s, value: %s",
                 name, parameter);
    }
}

void main() {
    Foo foo;
    foo.aNonExistentFunction(42);
    foo.anotherNonExistentFunction(100);
}
