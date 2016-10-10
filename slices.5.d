module slices_5;

import std.stdio;

void main() {
    double[3] a = [ 10, 20, 30 ];
    double[3] b = [  2,  3,  4 ];

    double[3] result = a[] + b[];

    writeln(result);
}
