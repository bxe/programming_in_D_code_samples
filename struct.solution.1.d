module struct_solution_1;

import std.stdio;
import std.random;
import std.algorithm;

struct Card {
    dchar suit;
    dchar value;
}

void printCard(in Card card) {
    write(card.suit, card.value);
}

Card[] newSuit(in dchar suit)
in {
    assert((suit == '♠') ||
           (suit == '♡') ||
           (suit == '♢') ||
           (suit == '♣'));

} out (result) {
    assert(result.length == 13);

} body {
    Card[] suitCards;

    foreach (value; "234567890JQKA") {
        suitCards ~= Card(suit, value);
    }

    return suitCards;
}

Card[] newDeck()
out (result) {
    assert(result.length == 52);

} body {
    Card[] deck;

    deck ~= newSuit('♠');
    deck ~= newSuit('♡');
    deck ~= newSuit('♢');
    deck ~= newSuit('♣');

    return deck;
}

void shuffle(Card[] deck, in int repetition) {
    /* Note: A better algorithm is to walk the deck from the
     *       beginning to the end and to swap each element
     *       with a random one that is picked among the
     *       elements from that point to the end.
     *
     * It would be even better to call randomShuffle() from
     * the std.algorithm module, which already applies the
     * same algorithm. Please read the comment in main() to
     * see how randomShuffle() can be used. */
    foreach (i; 0 .. repetition) {
        // Pick two elements at random
        immutable first = uniform(0, deck.length);
        immutable second = uniform(0, deck.length);

        swap(deck[first], deck[second]);
    }
}

void main() {
    Card[] deck = newDeck();

    shuffle(deck, 100);
    /* Note: Instead of the shuffle() call above, it would be
     *       better to call randomShuffle() as in the
     *       following line:
     *
     * randomShuffle(deck);
     */
    foreach (card; deck) {
        printCard(card);
        write(' ');
    }

    writeln();
}
