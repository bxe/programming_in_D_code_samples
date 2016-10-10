module unit_testing_solution_4;

dstring repeated(size_t count, dchar letter) {
    dstring result;

    foreach (i; 0..count) {
        result ~= letter;
    }

    return result;
}

unittest {
    assert(repeated(3, 'z') == "zzz");
    assert(repeated(10, 'é') == "éééééééééé");
}

dstring toFront(dstring str, in dchar letter) {
    size_t specialLetterCount;
    dstring lastPart;

    foreach (c; str) {
        if (c == letter) {
            ++specialLetterCount;

        } else {
            lastPart ~= c;
        }
    }

    return repeated(specialLetterCount, letter) ~ lastPart;
}

unittest {
    immutable str = "hello"d;

    assert(toFront(str, 'h') == "hello");
    assert(toFront(str, 'o') == "ohell");
    assert(toFront(str, 'l') == "llheo");
}

void main() {
}
