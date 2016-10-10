module switch_case_solution_1;

import std.stdio;
import std.string;

void main() {
    string op;
    double first;
    double second;

    write("Please enter the operation: ");
    op = chomp(readln());

    write("Please enter two values separated by a space: ");
    readf(" %s %s", &first, &second);

    double result;

    final switch (op) {

    case "add":
        result = first + second;
        break;

    case "subtract":
        result = first - second;
        break;

    case "multiply":
        result = first * second;
        break;

    case "divide":
        result = first / second;
        break;
    }

    writeln(result);
}
