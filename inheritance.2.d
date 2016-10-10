module inheritance_2;

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
import std.stdio;

// ...

void main() {
    auto locomotive = new Locomotive;
    auto train = new Train(locomotive);

    train.addCar(new PassengerCar, new FreightCar);

    train.departStation("Ankara");
    train.advance(500);
    train.arriveStation("Haydarpaşa");
}
