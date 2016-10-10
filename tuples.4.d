module tuples_4;

import std.conv;

struct S(ElementT, ResultT) {
    ElementT[] arr;

    ResultT length() {
        return to!ResultT(arr.length);
    }
}

void main() {
    auto s = S!(double, int)([ 1, 2, 3 ]);
    auto l = s.length();
}
