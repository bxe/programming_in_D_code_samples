module contracts_4;

int addPoints(in int goals1,
              in int goals2,
              ref int points1,
              ref int points2)
in {
    // ...

} out (result) {
    // ...

} body {
    int winner;

    // ...

    return winner;
}

unittest {
    // ...
}

void main() {
    int points1 = 10;
    int points2 = 7;
    int winner;

    winner = addPoints(3, 1, points1, points2);
    assert(points1 == 13);
    assert(points2 == 7);
    assert(winner == 1);

    winner = addPoints(2, 2, points1, points2);
    assert(points1 == 14);
    assert(points2 == 8);
    assert(winner == 0);
}
