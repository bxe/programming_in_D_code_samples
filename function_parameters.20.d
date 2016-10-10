module function_parameters_20;

import std.stdio;

void swap(int first, int second) {
    int temp = first;
    first = second;
    second = temp;
}

void main() {
    int a = 1;
    int b = 2;

    swap(a, b);

    writeln(a, ' ', b);
}
