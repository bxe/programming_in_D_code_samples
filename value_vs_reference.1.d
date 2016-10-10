module value_vs_reference_1;

import std.stdio;

void main() {
    int originalVariable;
    writeln("address of originalVariable: ", &originalVariable);
    foo(originalVariable, originalVariable);
}

void foo(ref int refParameter, out int outParameter) {
    writeln("address of refParameter    : ", &refParameter);
    writeln("address of outParameter    : ", &outParameter);
    assert(&refParameter == &outParameter);
}
