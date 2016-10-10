module ufcs_2;

int half(int value) {
    return value / 2;
}

void main() {
    assert(42.half() == 21);
}
