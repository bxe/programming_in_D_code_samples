module interface_3;

interface Game {
    final void play() {
        string name = gameName();
        writefln("Starting %s", name);

        introducePlayers();
        prepare();
        begin();
        end();

        writefln("Ending %s", name);
    }

    string gameName();
    void introducePlayers();
    void prepare();
    void begin();
    void end();
}
import std.stdio;
import std.string;
import std.random;
import std.conv;

class DiceSummingGame : Game {
    string player;
    size_t count;
    size_t sum;

    string gameName() {
        return "Dice Summing Game";
    }

    void introducePlayers() {
        write("What is your name? ");
        player = chomp(readln());
    }

    void prepare() {
        write("How many times to throw the dice? ");
        readf(" %s", &count);
        sum = 0;
    }

    void begin() {
        foreach (i; 0 .. count) {
            immutable dice = uniform(1, 7);
            writefln("%s: %s", i, dice);
            sum += dice;
        }
    }

    void end() {
        writefln("Player: %s, Dice sum: %s, Average: %s",
                 player, sum, to!double(sum) / count);
    }
}

void useGame(Game game) {
    game.play();
}

void main() {
    useGame(new DiceSummingGame());
}
