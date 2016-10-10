module nested_1;

void outerFunc(int parameter) {
    int local;

    void nestedFunc() {
        local = parameter * 2;
    }

    struct NestedStruct {
        void memberFunc() {
            local /= parameter;
        }
    }

    class NestedClass {
        void memberFunc() {
            local += parameter;
        }
    }

    // Using the nested definitions inside this scope:

    nestedFunc();

    auto s = NestedStruct();
    s.memberFunc();

    auto c = new NestedClass();
    c.memberFunc();
}

void main() {
    outerFunc(42);
}
