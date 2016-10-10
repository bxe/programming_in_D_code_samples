module const_member_functions_1;

import std.stdio;

struct Container {
    int[] elements;

    inout(int)[] firstPart(size_t n) inout {
        return elements[0 .. n];
    }
}

void main() {
    {
        // An immutable container
        auto container = immutable(Container)([ 1, 2, 3 ]);
        auto slice = container.firstPart(2);
        writeln(typeof(slice).stringof);
    }
    {
        // A const container
        auto container = const(Container)([ 1, 2, 3 ]);
        auto slice = container.firstPart(2);
        writeln(typeof(slice).stringof);
    }
    {
        // A mutable container
        auto container = Container([ 1, 2, 3 ]);
        auto slice = container.firstPart(2);
        writeln(typeof(slice).stringof);
    }
}
