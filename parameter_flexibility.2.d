module parameter_flexibility_2;

import std.stdio;

void func(int parameter,
          string functionName = __FUNCTION__,
          string file = __FILE__,
          size_t line = __LINE__) {
    writefln("Called from function %s at file %s, line %s.",
             functionName, file, line);
}

void main() {
    func(42);    // line 14
}
