module foreach_opapply_solution_2;

import std.stdio;
import std.string;

class Student {
    string name;
    int id;

    this(string name, int id) {
        this.name = name;
        this.id = id;
    }

    override string toString() {
        return format("%s(%s)", name, id);
    }
}

class Teacher {
    string name;
    string subject;

    this(string name, string subject) {
        this.name = name;
        this.subject = subject;
    }

    override string toString() {
        return format("%s teacher %s", subject, name);
    }
}

class School {
private:

    Student[] students;
    Teacher[] teachers;

public:

    this(Student[] students, Teacher[] teachers) {
        this.students = students;
        this.teachers = teachers;
    }

    /* This opApply override will be called when the foreach
     * variable is a Student. */
    int opApply(int delegate(ref Student) dg) {
        int result;

        foreach (student; students) {
            result = dg(student);

            if (result) {
                break;
            }
        }

        return result;
    }

    /* Similarly, this opApply will be called when the foreach
     * variable is a Teacher. */
    int opApply(int delegate(ref Teacher) dg) {
        int result;

        foreach (teacher; teachers) {
            result = dg(teacher);

            if (result) {
                break;
            }
        }

        return result;
    }
}

void printIndented(T)(T value) {
    writeln("  ", value);
}

void main() {
    auto school = new School(
        [ new Student("Can", 1),
          new Student("Canan", 10),
          new Student("Cem", 42),
          new Student("Cemile", 100) ],

        [ new Teacher("Nazmiye", "Math"),
          new Teacher("Makbule", "Literature") ]);

    writeln("Student loop");
    foreach (Student student; school) {
        printIndented(student);
    }

    writeln("Teacher loop");
    foreach (Teacher teacher; school) {
        printIndented(teacher);
    }
}
