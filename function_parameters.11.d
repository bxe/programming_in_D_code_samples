module function_parameters_11;

import std.stdio;

void reduceEnergy(ref double energy) {
    energy /= 4;
}

void main() {
    double energy = 100;

    reduceEnergy(energy);
    writeln("New energy: ", energy);
}
