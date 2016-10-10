module function_parameters_6;

import std.stdio;

double weightedTotal(in double currentTotal,
                     in double weight,
                     in double addend) {
    return currentTotal + (weight * addend);
}

void main() {
    writeln(weightedTotal(1.23, 4.56, 7.89));
}
