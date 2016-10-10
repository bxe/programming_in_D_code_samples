module cond_comp_1;

void swap(T)(ref T lhs, ref T rhs) {
    T temp = lhs;
    lhs = rhs;
    rhs = temp;
}

unittest {
    auto a = 'x';
    auto b = 'y';
    swap(a, b);

    assert(a == 'y');
    assert(b == 'x');
}

void swap(T : uint)(ref T lhs, ref T rhs) {
    lhs ^= rhs;
    rhs ^= lhs;
    lhs ^= rh;  // TYPO!
}

void main() {
}
