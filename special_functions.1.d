module special_functions_1;

import std.stdio;

struct Test {
    static Test opCall() {
        writeln("A Test object is being constructed.");
        Test test;
        return test;
    }
}

void main() {
    auto test = Test();
}
