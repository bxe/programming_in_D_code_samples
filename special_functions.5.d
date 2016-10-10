module special_functions_5;

import std.stdio;
import std.conv;
import std.random;
import std.array;

string indentationString(in int level) {
    return replicate(" ", level * 2);
}

struct XmlElement {
    string name;
    string indentation;

    this(in string name, in int level) {
        this.name = name;
        this.indentation = indentationString(level);

        writeln(indentation, '<', name, '>');
    }

    ~this() {
        writeln(indentation, "</", name, '>');
    }
}

void main() {
    immutable classes = XmlElement("classes", 0);

    foreach (classId; 0 .. 2) {
        immutable classTag = "class" ~ to!string(classId);
        immutable classElement = XmlElement(classTag, 1);

        foreach (i; 0 .. 3) {
            immutable gradeElement = XmlElement("grade", 2);
            immutable randomGrade = uniform(50, 101);

            writeln(indentationString(3), randomGrade);
        }
    }
}
