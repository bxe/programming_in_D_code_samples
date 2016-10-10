module contracts_3;

import std.exception;

inout(int)[] middle(inout(int)[] originalSlice, size_t width)
out (result) {
    assert(result.length == width);

} body {
    enforce(originalSlice.length >= width);

    immutable start = (originalSlice.length - width) / 2;
    immutable end = start + width;

    return originalSlice[start .. end];
}

unittest {
    auto slice = [1, 2, 3, 4, 5];

    assert(middle(slice, 3) == [2, 3, 4]);
    assert(middle(slice, 2) == [2, 3]);
    assert(middle(slice, 5) == slice);
}

void main() {
}
