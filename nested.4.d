module nested_4;

import std.stdio;

struct ModuleStruct {
    int i;

    void memberFunc() {
    }
}

void moduleFunc() {
    struct NestedStruct {
        int i;

        void memberFunc() {
        }
    }

    writefln("OuterStruct: %s bytes, NestedStruct: %s bytes.",
             ModuleStruct.sizeof, NestedStruct.sizeof);
}

void main() {
    moduleFunc();
}
