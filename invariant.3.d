module invariant_3;

class Protocol {
    void compute(double d)
    in {
        assert(d > 42);

    } body {
        // ...
    }
}

class SpecialProtocol : Protocol {
    /* Because it does not have an 'in' block, this function
     * effectively disables the preconditions of
     * 'Protocol.compute', perhaps unintentionally. */
    override void compute(double d) {
        // ...
    }
}

void main() {
    auto s = new SpecialProtocol();
    s.compute(10);    /* BUG: Although the value 10 does not
                       * satisfy the precondition of the
                       * superclass, this call succeeds. */
}
