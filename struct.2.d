module struct_2;

import std.math;

struct Test {
    char   c;
    int    i;
    double d;
}

void main() {
    // The initial values of all of the members are specified
    auto t1 = Test('a', 1, 2.3);
    assert(t1.c == 'a');
    assert(t1.i == 1);
    assert(t1.d == 2.3);

    // Last one is missing
    auto t2 = Test('a', 1);
    assert(t2.c == 'a');
    assert(t2.i == 1);
    assert(isNaN(t2.d));

    // Last two are missing
    auto t3 = Test('a');
    assert(t3.c == 'a');
    assert(t3.i == int.init);
    assert(isNaN(t3.d));

    // No initial value specified
    auto t4 = Test();
    assert(t4.c == char.init);
    assert(t4.i == int.init);
    assert(isNaN(t4.d));

    // The same as above
    Test t5;
    assert(t5.c == char.init);
    assert(t5.i == int.init);
    assert(isNaN(t5.d));
}
