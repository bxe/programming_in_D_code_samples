module slices_6;

import std.stdio;

void main() {
    double[] slice1 = [ 1, 1, 1 ];
    double[] slice2 = [ 2, 2, 2 ];
    double[] slice3 = [ 3, 3, 3 ];

    slice2 = slice1;      // ← slice2 starts providing access
                          //   to the same elements that
                          //   slice1 provides access to

    slice3[] = slice1;    // ← the values of the elements of
                          //   slice3 change

    writeln("slice1 before: ", slice1);
    writeln("slice2 before: ", slice2);
    writeln("slice3 before: ", slice3);

    slice2[0] = 42;       // ← the value of an element that
                          //   it shares with slice1 changes

    slice3[0] = 43;       // ← the value of an element that
                          //   only it provides access to
                          //   changes

    writeln("slice1 after : ", slice1);
    writeln("slice2 after : ", slice2);
    writeln("slice3 after : ", slice3);
}
