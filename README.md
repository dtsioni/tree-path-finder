# tree-path-finder
##Problem:

You are given a binary tree in which each node contains a value. Design an algorithm to print all paths which sum to a given value. The path does not need to start or end at the root or a leaf.

##My solution:

I have two recursive methods, traverse and search.
Traverse will go to each node in the tree and run search on it.
Search will find the value of each path underneath this node. If it is equal to the given value, then it is printed.
Both of these are necessary because the path does not need to start at the root.

I used a stack to keep track of the current path, which pushes each node as it goes down and pops it as it goes back up. The sum of the path is kept track of and whenever it equals the given value, it prints each node in the path stack.

###Example:

Example tree:
'         (5)
         / \
       (3)  (-2)
      /   \    \
   (11)   (-9) (18)
   / \    /  \    \
(-10)(2)(7) (1)   (-18)
                   /
                 (5)

traverse(root, 1)

Output:
3
-9
7
---------
11
-10
---------
1
---------'
