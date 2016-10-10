module struct_5;

import std.stdio;

struct Point {
    // The identifier of each object
    size_t id;

    int line;
    int column;

    // The id of the next object to construct
    static size_t nextId;
}

Point makePoint(int line, int column) {
    size_t id = Point.nextId;
    ++Point.nextId;

    return Point(id, line, column);
}

void main() {
    auto top = makePoint(7, 0);
    auto middle = makePoint(8, 0);
    auto bottom =  makePoint(9, 0);

    writeln(top.id);
    writeln(middle.id);
    writeln(bottom.id);
}
