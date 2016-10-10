module mixin_2;

import std.stdio;
mixin template EdgeArrayFeature(T, size_t count) {
    T[count] edges;

    void setEdge(size_t index, T edge) {
        edges[index] = edge;
    }

    void printEdges() {
        writeln("The edges:");

        foreach (i, edge; edges) {
            writef("%s:%s ", i, edge);
        }

        writeln();
    }
}
struct Point {
    int x;
    int y;
}

void main() {
    mixin EdgeArrayFeature!(Point, 5);

    setEdge(3, Point(3, 3));
    printEdges();
}
