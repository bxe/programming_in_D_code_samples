module pointers_solution_1;

void swap(int * lhs, int * rhs) {
    int temp = *lhs;
    *lhs = *rhs;
    *rhs = temp;
}

void main() {
    int i = 1;
    int j = 2;

    swap(&i, &j);

    assert(i == 2);
    assert(j == 1);
}
