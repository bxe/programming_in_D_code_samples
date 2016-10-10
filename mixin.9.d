/* NOTE: This program is expected to fail compilation. */

module mixin_9;

template Templ() {
    int i;
}

void main() {
    mixin Templ;
    mixin Templ;

    i = 42;        // ← compilation ERROR
}
