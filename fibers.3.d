module fibers_3;

import std.stdio;
import std.string;
import std.conv;
import std.random;
import std.range;
import std.algorithm;

/* Represents the nodes of a binary tree. This type is used in
 * the implementation of struct Tree below and should not be
 * used directly. */
struct Node {
    int element;
    Node * left;     // Left sub-tree
    Node * right;    // Right sub-tree

    void insert(int element) {
        if (element < this.element) {
            /* Smaller elements go under the left sub-tree. */
            insertOrSet(left, element);

        } else if (element > this.element) {
            /* Larger elements go under the right sub-tree. */
            insertOrSet(right, element);

        } else {
            throw new Exception(format("%s already exists",
                                       element));
        }
    }

    void print() const {
        /* First print the elements of the left sub-tree */
        if (left) {
            left.print();
            write(' ');
        }

        /* Then print this element */
        write(element);

        /* Lastly, print the elements of the right sub-tree */
        if (right) {
            write(' ');
            right.print();
        }
    }
}

/* Inserts the element to the specified sub-tree, potentially
 * initializing its node. */
void insertOrSet(ref Node * node, int element) {
    if (!node) {
        /* This is the first element of this sub-tree. */
        node = new Node(element);

    } else {
        node.insert(element);
    }
}

/* This is the actual Tree representation. It allows an empty
 * tree by means of 'root' being equal to 'null'. */
struct Tree {
    Node * root;

    /* Inserts the element to this tree. */
    void insert(int element) {
        insertOrSet(root, element);
    }

    /* Prints the elements in sorted order. */
    void print() const {
        if (root) {
            root.print();
        }
    }
}

/* Populates the tree with 'n' random numbers picked out of a
 * set of '10 * n' numbers. */
Tree makeRandomTree(size_t n) {
    auto numbers = iota((n * 10).to!int)
                   .randomSample(n, Random(unpredictableSeed))
                   .array;

    randomShuffle(numbers);

    /* Populate the tree with those numbers. */
    auto tree = Tree();
    numbers.each!(e => tree.insert(e));

    return tree;
}

void main() {
    auto tree = makeRandomTree(10);
    tree.print();
}
