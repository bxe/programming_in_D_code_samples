module ranges_2;

import std.string;

struct Student {
    string name;
    int number;

    string toString() const {
        return format("%s(%s)", name, number);
    }
}

struct School {
    Student[] students;
}

void main() {
    auto school = School( [ Student("Ebru", 1),
                            Student("Derya", 2) ,
                            Student("Damla", 3) ] );
}
