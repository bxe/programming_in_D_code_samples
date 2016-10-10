module functions_more_1;

auto func(int i) {
    if (i < 0) {
        return i;      // returns 'int' here
    }

    return i * 1.5;    // returns 'double' here
}

void main() {
    // The return type of the function is 'double'
    auto result = func(42);
    static assert(is (typeof(result) == double));
}
