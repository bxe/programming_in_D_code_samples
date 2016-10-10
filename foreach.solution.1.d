module foreach_solution_1;

import std.stdio;

void main() {
    string[int] names = [ 1:"one", 7:"seven", 20:"twenty" ];

    int[string] values;

    foreach (key, value; names) {
        values[value] = key;
    }

    writeln(values["twenty"]);
}
