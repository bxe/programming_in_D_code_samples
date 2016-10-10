module parameter_flexibility_1;

import std.stdio;

void func(int parameter) {
    writefln("Inside function %s at file %s, line %s.",
             __FUNCTION__, __FILE__, __LINE__);    // line 6
}

void main() {
    func(42);
}
