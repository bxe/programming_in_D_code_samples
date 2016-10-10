module unit_testing_solution_2;

dstring toFront(dstring str, in dchar letter) {
    dchar[] firstPart;
    dchar[] lastPart;

    foreach (c; str) {
        if (c == letter) {
            firstPart ~= c;

        } else {
            lastPart ~= c;
        }
    }

    return (firstPart ~ lastPart).idup;
}

unittest {
    immutable str = "hello"d;

    assert(toFront(str, 'h') == "hello");
    assert(toFront(str, 'o') == "ohell");
    assert(toFront(str, 'l') == "llheo");
}

void main() {
}
