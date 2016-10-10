module templates_more_10;

import std.stdio;

interface SoundEmitter {
    string emitSound();
}

class Violin : SoundEmitter {
    string emitSound() {
        return "♩♪♪";
    }
}

class Bell : SoundEmitter {
    string emitSound() {
        return "ding";
    }
}

void useSoundEmittingObject(SoundEmitter object) {
    // ... some operations ...
    writeln(object.emitSound());
    // ... more operations ...
}

void main() {
    useSoundEmittingObject(new Violin);
    useSoundEmittingObject(new Bell);
}
