/* NOTE: This program is expected to fail compilation. */

module const_and_immutable_8;

void foo(string s) {
    // ...
}

void main() {
    char[] salutation;
    foo(salutation);                // ← compilation ERROR
    foo(salutation.idup);           // ← this compiles
}
