module concurrency_5;

import std.stdio;
import std.random;
import std.string;
import std.concurrency;
import core.thread;

struct Position {
    int line;
    int column;

    string toString() {
        return format("%s,%s", line, column);
    }
}

struct Movement {
    Position from;
    Position to;

    string toString() {
        return ((from == to)
                ? format("%s (idle)", from)
                : format("%s -> %s", from, to));
    }
}

class Robot {
    string image;
    Duration restDuration;

    this(string image, Duration restDuration) {
        this.image = image;
        this.restDuration = restDuration;
    }

    override string toString() {
        return format("%s(%s)", image, restDuration);
    }
}

/* Returns a random position around 0,0. */
Position randomPosition() {
    return Position(uniform!"[]"(-10, 10),
                    uniform!"[]"(-10, 10));
}

/* Returns at most one step from the specified coordinate. */
int randomStep(int current) {
    return current + uniform!"[]"(-1, 1);
}

/* Returns a neighbor of the specified Position. It may be one
 * of the neighbors at eight directions, or the specified
 * position itself. */
Position randomNeighbor(Position position) {
    return Position(randomStep(position.line),
                    randomStep(position.column));
}

struct Job {
    size_t robotId;
    Position origin;
    Duration restDuration;
}

struct MovementMessage {
    size_t robotId;
    Movement movement;
}

void robotMover(Job job) {
    Position from = job.origin;

    while (true) {
        Thread.sleep(job.restDuration);

        Position to = randomNeighbor(from);
        Movement movement = Movement(from, to);
        from = to;

        ownerTid.send(MovementMessage(job.robotId, movement));
    }
}

void main() {
    /* Robots with various restDurations. */
    Robot[] robots = [ new Robot("A",  600.msecs),
                       new Robot("B", 2000.msecs),
                       new Robot("C", 5000.msecs) ];

    /* Start a mover thread for each robot. */
    foreach (robotId, robot; robots) {
        spawn(&robotMover, Job(robotId,
                               randomPosition(),
                               robot.restDuration));
    }

    /* Ready to collect information about the movements of the
     * robots. */
    while (true) {
        auto message = receiveOnly!MovementMessage();

        /* Print the movement of this robot. */
        writefln("%s %s",
                 robots[message.robotId], message.movement);
    }
}
