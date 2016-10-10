module operator_overloading_2;

struct Duration {
    int minute;

    ref Duration opUnary(string op)()
            if (op == "++") {
        ++minute;
        return this;
    }

    ref Duration opUnary(string op)()
            if (op == "--") {
        --minute;
        return this;
    }

    ref Duration opOpAssign(string op)(in int amount)
            if (op == "+") {
        minute += amount;
        return this;
    }

    ref Duration opOpAssign(string op)(in int amount)
            if (op == "-") {
        minute -= amount;
        return this;
    }
}

unittest {
    auto duration = Duration(10);

    ++duration;
    assert(duration.minute == 11);

    --duration;
    assert(duration.minute == 10);

    duration += 5;
    assert(duration.minute == 15);

    duration -= 3;
    assert(duration.minute == 12);
}

void main() {
}
