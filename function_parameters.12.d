module function_parameters_12;

import std.stdio;

double reducedEnergy(double energy) {
    return energy / 4;
}

void main() {
    double energy = 100;

    energy = reducedEnergy(energy);
    writeln("New energy: ", energy);
}
