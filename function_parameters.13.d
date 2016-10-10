module function_parameters_13;

import std.stdio;

int[] inner(int[] slice) {
    if (slice.length) {
        --slice.length;               // trim from the end

        if (slice.length) {
            slice = slice[1 .. $];    // trim from the beginning
        }
    }

    return slice;
}

void main() {
    int[] numbers = [ 5, 6, 7, 8, 9 ];
    writeln(inner(numbers));
}
