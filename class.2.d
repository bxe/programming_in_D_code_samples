module class_2;

class C {
    ~this() {
        auto c = new C();    // ← WRONG: Allocates explicitly
                             //          in a class destructor
    }
}

void main() {
    auto c = new C();
}
