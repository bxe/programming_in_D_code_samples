module unit_testing_solution_1;

dstring toFront(dstring str, in dchar letter) {
    dstring result;

    foreach (c; str) {
        result ~= c;
    }

    return result;
}

unittest {
    immutable str = "hello"d;

    assert(toFront(str, 'h') == "hello");
    assert(toFront(str, 'o') == "ohell");
    assert(toFront(str, 'l') == "llheo");
}

void main() {
}
