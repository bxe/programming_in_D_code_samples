module memory_8;

interface Animal {
    string sing();
}

class Cat : Animal {
    string sing() {
        return "meow";
    }
}

class Parrot : Animal {
    string[] lyrics;

    this(string[] lyrics) {
        this.lyrics = lyrics;
    }

    string sing() {
        /* std.algorithm.joiner joins elements of a range with
         * the specified separator. */
        return lyrics.joiner(", ").to!string;
    }
}
T * nextAlignedAddress(T)(T * candidateAddr) {
    import std.traits;

    static if (is (T == class)) {
        const alignment = classInstanceAlignment!T;

    } else {
        const alignment = T.alignof;
    }

    const result = (cast(size_t)candidateAddr + alignment - 1)
                   / alignment * alignment;
    return cast(T*)result;
}
void * nextAlignedAddress(T)(void * candidateAddr) {
    return nextAlignedAddress(cast(T*)candidateAddr);
}
import std.stdio;
import std.algorithm;
import std.conv;
import core.memory;

// ...

void main() {
    /* A slice of Animal variables (not Animal objects). */
    Animal[] animals;

    /* Allocating a buffer with an arbitrary capacity and
     * assuming that the two objects in this example will fit
     * in that area. Normally, this condition must be
     * validated. */
    auto capacity = 10_000;
    void * buffer = GC.calloc(capacity);

    /* Let's first place a Cat object. */
    void * catCandidateAddr = buffer;
    void * catAddr = nextAlignedAddress!Cat(catCandidateAddr);
    writeln("Cat address   : ", catAddr);

    /* Since emplace() requires a void[] for a class object,
     * we must first produce a slice from the pointer. */
    size_t catSize = __traits(classInstanceSize, Cat);
    void[] catPlace = catAddr[0..catSize];

    /* Construct a Cat object inside that memory slice and
     * store the returned class variable for later use. */
    Cat cat = emplace!Cat(catPlace);
    animals ~= cat;

    /* Now construct a Parrot object at the next available
     * address that satisfies the alignment requirement. */
    void * parrotCandidateAddr = catAddr + catSize;
    void * parrotAddr =
        nextAlignedAddress!Parrot(parrotCandidateAddr);
    writeln("Parrot address: ", parrotAddr);

    size_t parrotSize = __traits(classInstanceSize, Parrot);
    void[] parrotPlace = parrotAddr[0..parrotSize];

    Parrot parrot =
        emplace!Parrot(parrotPlace, [ "squawk", "arrgh" ]);
    animals ~= parrot;

    /* Use the objects. */
    foreach (animal; animals) {
        writeln(animal.sing());
    }
}
