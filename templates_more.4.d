module templates_more_4;

import std.stdio;
import std.string;

class XmlElement(string tag) {
    double value;

    this(double value) {
        this.value = value;
    }

    override string toString() const {
        return format("<%s>%s</%s>", tag, value, tag);
    }
}
alias Location = XmlElement!"location";
alias Temperature = XmlElement!"temperature";
alias Weight = XmlElement!"weight";

void main() {
    Object[] elements;

    elements ~= new Location(1);
    elements ~= new Temperature(23);
    elements ~= new Weight(78);

    writeln(elements);
}
