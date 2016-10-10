module modules_2;

import std.stdio;
import std.algorithm : algSort = sort;

void main() {
    auto arr = [ 2, 10, 1, 5 ];
    arr.algSort;
    writeln(arr);
}
