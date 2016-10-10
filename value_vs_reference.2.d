module value_vs_reference_2;

void main() {
    // Although it is named as 'array' here, this variable is
    // a slice as well. It provides access to all of the
    // initial elements:
    int[] array = [ 0, 1, 2, 3, 4 ];

    // A slice that provides access to elements other than the
    // first and the last:
    int[] slice = array[1 .. $ - 1];

    // At this point slice[0] and array[1] provide access to
    // the same value:
    assert(&slice[0] == &array[1]);

    // Changing slice[0] changes array[1]:
    slice[0] = 42;
    assert(array[1] == 42);
}
