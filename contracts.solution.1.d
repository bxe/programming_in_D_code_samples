module contracts_solution_1;

int addPoints(in int goals1,
              in int goals2,
              ref int points1,
              ref int points2)
in {
    assert(goals1 >= 0);
    assert(goals2 >= 0);
    assert(points1 >= 0);
    assert(points2 >= 0);

} out (result) {
    assert((result >= 0) && (result <= 2));

} body {
    int winner;

    if (goals1 > goals2) {
        points1 += 3;
        winner = 1;

    } else if (goals1 < goals2) {
        points2 += 3;
        winner = 2;

    } else {
        ++points1;
        ++points2;
        winner = 0;
    }

    return winner;
}

unittest {
    int points1 = 10;
    int points2 = 7;
    int winner;

    // First team wins
    winner = addPoints(3, 1, points1, points2);
    assert(points1 == 13);
    assert(points2 == 7);
    assert(winner == 1);

    // Draw
    winner = addPoints(2, 2, points1, points2);
    assert(points1 == 14);
    assert(points2 == 8);
    assert(winner == 0);

    // Second team wins
    winner = addPoints(0, 1, points1, points2);
    assert(points1 == 14);
    assert(points2 == 11);
    assert(winner == 2);
}

void main() {
    // ...
}
