module invariant_2;

interface Iface {
    int[] func(int[] a, int[] b)
    in {
        writeln("Iface.func.in");

        /* This interface member function requires that the
         * lengths of the two parameters are equal. */
        assert(a.length == b.length);

    } out (result) {
        writeln("Iface.func.out");

        /* This interface member function guarantees that the
         * result will have even number of elements.
         * (Note that an empty slice is considered to have
         * even number of elements.) */
        assert((result.length % 2) == 0);
    }
}

class Class : Iface {
    int[] func(int[] a, int[] b)
    in {
        writeln("Class.func.in");

        /* This class member function loosens the ancestor's
         * preconditions by allowing parameters with unequal
         * lengths as long as at least one of them is empty. */
        assert((a.length == b.length) ||
               (a.length == 0) ||
               (b.length == 0));

    } out (result) {
        writeln("Class.func.out");

        /* This class member function provides additional
         * guarantees: The result will not be empty and that
         * the first and the last elements will be equal. */
        assert((result.length != 0) &&
               (result[0] == result[$ - 1]));

    } body {
        writeln("Class.func.body");

        /* This is just an artificial implementation to
         * demonstrate how the 'in' and 'out' blocks are
         * executed. */

        int[] result;

        if (a.length == 0) {
            a = b;
        }

        if (b.length == 0) {
            b = a;
        }

        foreach (i; 0 .. a.length) {
            result ~= a[i];
            result ~= b[i];
        }

        result[0] = result[$ - 1] = 42;

        return result;
    }
}

import std.stdio;

void main() {
    auto c = new Class();

    /* Although the following call fails Iface's precondition,
     * it is accepted because it fulfills Class' precondition. */
    writeln(c.func([1, 2, 3], []));
}
