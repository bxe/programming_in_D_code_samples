module templates_2;

class Stack(T) {
private:

    T[] elements;

public:

    void push(T element) {
        elements ~= element;
    }

    void pop() {
        --elements.length;
    }

    T top() const @property {
        return elements[$ - 1];
    }

    size_t length() const @property {
        return elements.length;
    }
}
import std.string;
import std.stdio;
import std.random;

struct Point(T) {
    T x;
    T y;

    string toString() const {
        return format("(%s,%s)", x, y);
    }
}

// Returns a random value between -0.50 and 0.50.
double random_double()
out (result) {
    assert((result >= -0.50) && (result < 0.50));

} body {
    return (double(uniform(0, 100)) - 50) / 100;
}

// Returns a Stack that contains 'count' number of random
// Point!double elements.
Stack!(Point!double) randomPoints(size_t count)
out (result) {
    assert(result.length == count);

} body {
    auto points = new Stack!(Point!double);

    foreach (i; 0 .. count) {
        immutable point = Point!double(random_double(),
                                       random_double());
        writeln("adding  : ", point);
        points.push(point);
    }

    return points;
}

void main() {
    auto stackedPoints = randomPoints(10);

    while (stackedPoints.length) {
        writeln("removing: ", stackedPoints.top);
        stackedPoints.pop();
    }
}
