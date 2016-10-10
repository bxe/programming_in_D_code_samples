module assert_1;

double averageAge(double first, double second) {
    assert(first >= 0);
    assert(second >= 0);

    return (first + second) / 2;
}

void main() {
    auto result = averageAge(-1, 10);
}
