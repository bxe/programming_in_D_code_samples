/* NOTE: This program is expected to fail compilation. */

module const_and_immutable_7;

void main() {
    /* The original variable is immutable */
    immutable int[] slice = [ 10, 20, 30, 40 ];
    foo(slice);
}

/* A function that takes its parameter as const, in order to
 * be more useful. */
void foo(const int[] slice) {
    bar(slice);    // ← compilation ERROR
}

/* A function that takes its parameter as immutable, for a
 * plausible reason. */
void bar(immutable int[] slice) {
    // ...
}
