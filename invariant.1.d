module invariant_1;

import std.stdio;
import std.math;

struct Triangle {
private:

    double a;
    double b;
    double c;

public:

    double area() const @property
    out (result) {
        assert(result >= 0);

    } body {
        immutable halfPerimeter = (a + b + c) / 2;

        return sqrt(halfPerimeter
                    * (halfPerimeter - a)
                    * (halfPerimeter - b)
                    * (halfPerimeter - c));
    }
}

void main() {
    auto threeFourFive = Triangle(3, 4, 5);
    writeln(threeFourFive.area);
}
