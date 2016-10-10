module mixin_3;

import std.stdio;
mixin template MyMixin(T) {
    void foo(this MixingType)() {
        import std.stdio;
        writefln("The actual type that is mixing in: %s",
                 MixingType.stringof);
    }
}

struct MyStruct {
    mixin MyMixin!(int);
}

void main() {
    auto a = MyStruct();
    a.foo();
}
