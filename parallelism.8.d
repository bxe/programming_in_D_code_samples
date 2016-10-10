module parallelism_8;

import std.stdio;
import std.algorithm;
import core.thread;

struct Student {
    int number;
    int[] grades;

    double averageGrade() @property {
        writefln("Started working on student %s",
                 number);
        Thread.sleep(1.seconds);

        const average = grades.sum / grades.length;

        writefln("Finished working on student %s", number);
        return average;
    }
}

void main() {
    Student[] students;

    foreach (i; 0 .. 10) {
        /* Two grades for each student */
        students ~= Student(i, [80 + i, 90 + i]);
    }

    auto results = map!(a => a.averageGrade)(students);

    foreach (result; results) {
        writeln(result);
    }
}
