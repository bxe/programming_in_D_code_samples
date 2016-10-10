module inheritance_3;

import std.stdio;
class RailwayVehicle {
    void advance(in size_t kilometers) {
        writefln("The vehicle is advancing %s kilometers",
                 kilometers);
    }
}
class Locomotive : RailwayVehicle {
}
class RailwayCar : RailwayVehicle {
    abstract void load();
    abstract void unload();
}
class Train : RailwayVehicle {
    // ...

    void departStation(string station) {
        foreach (car; cars) {
            car.load();
        }

        writefln("Departing from %s station", station);
    }

    void arriveStation(string station) {
        writefln("Arriving at %s station", station);

        foreach (car; cars) {
            car.unload();
        }
    }
    Locomotive locomotive;
    RailwayCar[] cars;

    // ...
import std.exception;
// ...

    // ...

    this(Locomotive locomotive) {
        enforce(locomotive !is null,
                "Locomotive cannot be null");
        this.locomotive = locomotive;
    }

    void addCar(RailwayCar[] cars...) {
        this.cars ~= cars;
    }

    // ...
}
class PassengerCar : RailwayCar {
    override void load() {
        writeln("The passengers are getting on");
    }

    override void unload() {
        writeln("The passengers are getting off");
    }
}

class FreightCar : RailwayCar {
    override void load() {
        writeln("The crates are being loaded");
    }

    override void unload() {
        writeln("The crates are being unloaded");
    }
}
void main() {
    auto railwayCar1 = new PassengerCar;
    railwayCar1.advance(100);

    auto railwayCar2 = new FreightCar;
    railwayCar2.advance(200);

    auto locomotive = new Locomotive;
    locomotive.advance(300);
}
