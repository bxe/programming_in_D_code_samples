module memory_7;

size_t sizeWithPadding(T)() {
    static if (is (T == class)) {
        const candidateAddr = __traits(classInstanceSize, T);

    } else {
        const candidateAddr = T.sizeof;
    }

    return cast(size_t)nextAlignedAddress(cast(T*)candidateAddr);
}
T * nextAlignedAddress(T)(T * candidateAddr) {
    import std.traits;

    static if (is (T == class)) {
        const alignment = classInstanceAlignment!T;

    } else {
        const alignment = T.alignof;
    }

    const result = (cast(size_t)candidateAddr + alignment - 1)
                   / alignment * alignment;
    return cast(T*)result;
}
import std.stdio;
import std.string;
import core.memory;
import std.conv;

// ...

struct Student {
    string name;
    int id;

    string toString() {
        return format("%s(%s)", name, id);
    }
}

void main() {
    /* Some information about this type. */
    writefln("Student.sizeof: %#x (%s) bytes",
             Student.sizeof, Student.sizeof);
    writefln("Student.alignof: %#x (%s) bytes",
             Student.alignof, Student.alignof);

    string[] names = [ "Amy", "Tim", "Joe" ];
    auto totalSize = sizeWithPadding!Student() * names.length;

    /* Reserve room for all Student objects.
     *
     * Warning! The objects that are accessible through this
     * slice are not constructed yet; they should not be
     * accessed until after they are properly constructed. */
    Student[] students =
        (cast(Student*)GC.calloc(totalSize))[0 .. names.length];

    foreach (int i, name; names) {
        Student * candidateAddr = students.ptr + i;
        Student * objectAddr =
            nextAlignedAddress(candidateAddr);
        writefln("address of object %s: %s", i, objectAddr);

        const id = 100 + i;
        emplace(objectAddr, name, id);
    }

    /* All of the objects are constructed and can be used. */
    writeln(students);
}
