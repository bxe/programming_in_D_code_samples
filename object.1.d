module object_1;

class MusicalInstrument {
}

class StringInstrument : MusicalInstrument {
}

class Violin : StringInstrument {
}

class Guitar : StringInstrument {
}

void main() {
    TypeInfo v = typeid(Violin);
    TypeInfo g = typeid(Guitar);
    assert(v != g);    // the two types are not the same
}
