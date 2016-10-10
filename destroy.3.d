module destroy_3;

import std.stdio;
import std.array;
import std.random;
import std.conv;

string indentationString(in int level) {
    return replicate(" ", level * 2);
}

class XmlElement {
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
    const courses = new XmlElement("courses", 0);

    foreach (courseId; 0 .. 2) {
        const courseTag = "course" ~ to!string(courseId);
        const courseElement = new XmlElement(courseTag, 1);

        foreach (i; 0 .. 3) {
            const gradeElement = new XmlElement("grade", 2);
            const randomGrade = uniform(50, 101);

            writeln(indentationString(3), randomGrade);
        }
    }
}
