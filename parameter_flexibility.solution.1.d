module parameter_flexibility_solution_1;

import std.stdio;

enum Operation { add, subtract, multiply, divide }

struct Calculation {
    Operation op;
    double first;
    double second;
}

double[] calculate(in Calculation[] calculations...) {
    double[] results;

    foreach (calculation; calculations) {
        final switch (calculation.op) {

        case Operation.add:
            results ~= calculation.first + calculation.second;
            break;

        case Operation.subtract:
            results ~= calculation.first - calculation.second;
            break;

        case Operation.multiply:
            results ~= calculation.first * calculation.second;
            break;

        case Operation.divide:
            results ~= calculation.first / calculation.second;
            break;
        }
    }

    return results;
}

void main() {
    writeln(calculate(Calculation(Operation.add, 1.1, 2.2),
                      Calculation(Operation.subtract, 3.3, 4.4),
                      Calculation(Operation.multiply, 5.5, 6.6),
                      Calculation(Operation.divide, 7.7, 8.8)));
}
