/* NOTE: This program is expected to fail compilation. */

module function_parameters_16;

void foo(shared int[] i) {
    // ...
}

void main() {
    int[] numbers = [ 10, 20 ];
    foo(numbers);    // ← compilation ERROR
}
