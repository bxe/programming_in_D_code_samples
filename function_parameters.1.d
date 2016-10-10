module function_parameters_1;

import std.stdio;

void reduceEnergy(double energy) {
    energy /= 4;
}

void main() {
    double energy = 100;

    reduceEnergy(energy);
    writeln("New energy: ", energy);
}
