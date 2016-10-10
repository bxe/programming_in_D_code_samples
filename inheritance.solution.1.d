module inheritance_solution_1;

import std.stdio;
import std.exception;

class RailwayVehicle {
    void advance(in size_t kilometers) {
        writefln("The vehicle is advancing %s kilometers",
                 kilometers);

        foreach (i; 0 .. kilometers / 100) {
            writefln("  %s", makeSound());
        }
    }

    abstract string makeSound();
}

class Locomotive : RailwayVehicle {
    override string makeSound() {
        return "choo choo";
    }
}

class RailwayCar : RailwayVehicle {
    // ...

    override string makeSound() {
        return "clack clack";
    }
}

class PassengerCar : RailwayCar {
    // ...
}

class FreightCar : RailwayCar {
    // ...
}

void main() {
    auto railwayCar1 = new PassengerCar;
    railwayCar1.advance(100);

    auto railwayCar2 = new FreightCar;
    railwayCar2.advance(200);

    auto locomotive = new Locomotive;
    locomotive.advance(300);
}
