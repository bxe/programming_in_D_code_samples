module nested_5;

class OuterClass {
    int outerMember;

    class NestedClass {
        int func() {
            /* A nested class can access members of the outer
             * class. */
            return outerMember * 2;
        }

        OuterClass context() {
            /* A nested class can access its outer object
             * (i.e. its context) by '.outer'. */
            return this.outer;
        }
    }

    NestedClass algorithm() {
        /* An outer class can construct a nested object by
         * '.new'. */
        return this.new NestedClass();
    }
}

void main() {
    auto outerObject = new OuterClass();

    /* A member function of an outer class is returning a
     * nested object: */
    auto nestedObject = outerObject.algorithm();

    /* The nested object gets used in the program: */
    nestedObject.func();

    /* Naturally, the context of nestedObject is the same as
     * outerObject: */
    assert(nestedObject.context() is outerObject);
}
