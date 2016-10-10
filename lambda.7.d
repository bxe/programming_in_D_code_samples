module lambda_7;

struct MyStruct {
    void func() {
    }
}

void main() {
    auto o = MyStruct();

    auto d = &o.func;

    assert(d.funcptr == &MyStruct.func);
    assert(d.ptr == &o);
}
