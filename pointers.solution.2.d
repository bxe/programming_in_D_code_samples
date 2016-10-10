module pointers_solution_2;

struct Node(T) {
    T element;
    Node * next;

    string toString() const {
        string result = to!string(element);

        if (next) {
            result ~= " -> " ~ to!string(*next);
        }

        return result;
    }
}

struct List(T) {
    Node!T * head;

    void insertAtHead(T element) {
        head = new Node!T(element, head);
    }

    string toString() const {
        return format("(%s)", head ? to!string(*head) : "");
    }
}
import std.stdio;
import std.conv;
import std.string;

// ...

struct Point {
    double x;
    double y;

    string toString() const {
        return format("(%s,%s)", x, y);
    }
}

void main() {
    List!Point points;

    points.insertAtHead(Point(1.1, 2.2));
    points.insertAtHead(Point(3.3, 4.4));
    points.insertAtHead(Point(5.5, 6.6));

    writeln(points);
}
