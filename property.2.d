module property_2;

import std.stdio;
import std.math;

struct Rectangle {
    double width;
    double height;

    double area() const {
        return width * height;
    }

    void setArea(double newArea) {
        auto scale = sqrt(newArea / area);

        width *= scale;
        height *= scale;
    }
}

void main() {
    auto garden = Rectangle(10, 20);
    writeln("The area of the garden: ", garden.area());

    garden.setArea(50);

    writefln("New state: %s x %s = %s",
             garden.width, garden.height, garden.area());
}
