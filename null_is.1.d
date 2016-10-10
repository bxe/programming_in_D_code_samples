module null_is_1;

import std.stdio;

class MyClass {
    int member;
}

void use(MyClass variable) {
    writeln(variable.member);    
}

void main() {
    MyClass variable;
    use(variable);
}
