/* NOTE: This program is expected to fail compilation. */

module alias_1;

class Super {
    void foo(int x) {
        // ...
    }
}

class Sub : Super {
    void foo() {
        // ...
    }
}

void main() {
    auto object = new Sub;
    object.foo(42);            // ← compilation ERROR
}
