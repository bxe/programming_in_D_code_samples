/* NOTE: This program is expected to fail compilation. */

module alias_3;

void main() {
    auto object = new Sub;
    object.city = 42;        // ← compilation ERROR
}
