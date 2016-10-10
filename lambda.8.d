module lambda_8;

import std.stdio;
struct MyStruct {
    int i;

    void func() {
        import std.stdio;
        writeln(i);
    }
}

void main() {
    auto o = MyStruct(42);

    void delegate() d;
    assert(d is null);    // null to begin with

    d.funcptr = &MyStruct.func;
    d.ptr = &o;

    d();
}
