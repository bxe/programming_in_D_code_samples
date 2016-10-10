module alias_4;

class Super {
    int city;
}

class Sub : Super {
    string city() const @property {
        return "Kayseri";
    }

    alias cityCode = Super.city;
}

void main() {
    auto object = new Sub;
    object.cityCode = 42;
}
