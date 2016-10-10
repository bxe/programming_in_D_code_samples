module special_functions_4;

import std.stdio;

struct Student {
    const char[] fileName;
    int[] grades;

    this(const char[] fileName) {
        this.fileName = fileName;
    }

    void save() {
        auto file = File(fileName.idup, "w");
        file.writeln("The grades of the student:");
        file.writeln(grades);
    }

    // ...
}

void main() {
    char[] fileName;
    fileName ~= "student_grades";

    auto student = Student(fileName);

    // ...

    /* Assume the fileName variable is modified later on
     * perhaps unintentionally (all of its characters are
     * being set to 'A' here): */
    fileName[] = 'A';

    // ...

    /* The grades would be written to the wrong file: */
    student.save();
}
