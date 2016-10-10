module alias_5;

struct S {
    int i;
    int j;
}

void main() {
    auto s = S();

    with (s) {
        i = 1;    // means s.i
        j = 2;    // means s.j
    }
}
