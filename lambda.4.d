module lambda_4;

import std.stdio;
import std.algorithm;

void main() {
    int[] numbers = [ 20, 1, 10, 300, -2 ];
    writeln(numbers.filter!(number => number > 10));
}
