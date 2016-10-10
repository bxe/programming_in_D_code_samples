module modules_5;

// Declaring that 'bar' is defined inside namespace a::b::c
// and that it has C++ linkage:
extern(C++, a.b.c) void bar();

void main() {
    bar();          // a call to a::b::c::bar()
    a.b.c.bar();    // same as above
}
