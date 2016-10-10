module pointers_12;

void swap(int lhs, int rhs) {
    int temp = lhs;
    lhs = rhs;
    rhs = temp;
}

void main() {
    int i = 1;
    int j = 2;

    swap(i, j);

    // Their values should be swapped
    assert(i == 2);
    assert(j == 1);
}
