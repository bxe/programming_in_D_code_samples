module destroy_4;

import std.typecons;

class C {
    void foo() {
    }
}

void main() {
    auto p = scoped!C();
    p.foo();    // Proxy object p is being used as type C
}
