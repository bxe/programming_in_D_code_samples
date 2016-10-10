module alias_this_2;

import std.stdio;

class Student {
    string name;
    uint[] grades;

    this(string name) {
        this.name = name;
    }
}

class Teacher {
    string name;
    string subject;

    this(string name, string subject) {
        this.name = name;
        this.subject = subject;
    }
}

class TeachingAssistant {
    Student studentIdentity;
    Teacher teacherIdentity;

    this(string name, string subject) {
        this.studentIdentity = new Student(name);
        this.teacherIdentity = new Teacher(name, subject);
    }

    /* The following two 'alias this' declarations will enable
     * this type to be used both as a Student and as a Teacher.
     *
     * Note: dmd 2.068 did not support multiple 'alias this'
     *       declarations. */
    alias teacherIdentity this;
}

void attendClass(Teacher teacher, Student[] students)
in {
    assert(teacher !is null);
    assert(students.length > 0);

} body {
    writef("%s is teaching %s to the following students:",
           teacher.name, teacher.subject);

    foreach (student; students) {
        writef(" %s", student.name);
    }

    writeln();
}

void main() {
    auto students = [ new Student("Shelly"),
                      new Student("Stan") ];

    /* An object that can be used both as a Teacher and a
     * Student: */
    auto tim = new TeachingAssistant("Tim", "math");

    // 'tim' is the teacher in the following use:
    attendClass(tim, students);

    // 'tim' is one of the students in the following use:
    auto amy = new Teacher("Amy", "physics");
}
