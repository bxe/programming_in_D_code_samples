module operator_overloading_3;

struct S {
    int i;

    int opCmp(in S rhs) const {
        return i - rhs.i;          
    }
}

void main() {
    assert(S(-2) > S(int.max));    
}
