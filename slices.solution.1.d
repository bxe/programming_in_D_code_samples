module slices_solution_1;

import std.stdio;

void main() {
    double[] array = [ 1, 20, 2, 30, 7, 11 ];

    double[] slice = array;    // Start with a slice that
                               // provides access to all of
                               // the elements of the array

    while (slice.length) {     // As long as there is at least
                               // one element in that slice

        if (slice[0] > 10) {   // Always use the first element
            slice[0] /= 2;     // in the expressions
        }

        slice = slice[1 .. $]; // Shorten the slice from the
                               // beginning
    }

    writeln(array);            // The actual elements are
                               // changed
}
