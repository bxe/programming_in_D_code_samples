module mixin_11;

template Templatize(string str) {
    mixin (str);
}

void main() {
    mixin Templatize!("int i;") A;    // Defines A.i
    mixin Templatize!("int i;") B;    // Defines B.i

    A.i = 42;                         // ← not ambiguous anymore
}
