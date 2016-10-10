/* NOTE: This program is expected to fail compilation. */

module mixin_10;

void main() {
    mixin ("int i;");
    mixin ("int i;");    // ← compilation ERROR

    i = 42;
}
