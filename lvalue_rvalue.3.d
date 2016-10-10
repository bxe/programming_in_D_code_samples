module lvalue_rvalue_3;

void incrementByTen()(auto ref int value) {
    /* WARNING: The parameter may be a copy if the argument is
     * an rvalue. This means that the following modification
     * may not be observable by the caller. */

    value += 10;
}

void main() {
    int a;
    int b;

    incrementByTen(a);        // lvalue; passed by reference
    incrementByTen(a + b);    // rvalue; copied
}
