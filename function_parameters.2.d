module function_parameters_2;

import std.stdio;

void reduceEnergy(double energy) {
    writeln("Entered the function      : ", energy);
    energy /= 4;
    writeln("Leaving the function      : ", energy);
}

void main() {
    double energy = 100;

    writeln("Calling the function      : ", energy);
    reduceEnergy(energy);
    writeln("Returned from the function: ", energy);
}
