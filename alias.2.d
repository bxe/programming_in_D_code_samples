module alias_2;

class Super {
    void foo(int x) {
        // ...
    }
}

class Sub : Super {
    void foo() {
        // ...
    }

    alias generalFoo = Super.foo;
}

// ...

void main() {
    auto object = new Sub;
    object.generalFoo(42);
}
