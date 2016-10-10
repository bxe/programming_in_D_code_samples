module const_and_immutable_9;

void foo(const char[] s) {
    // ...
}

void main() {
    char[] mutableString;
    string immutableString;

    foo(mutableString);      // ← compiles
    foo(immutableString);    // ← compiles
}
