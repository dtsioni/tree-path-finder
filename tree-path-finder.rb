require './stack.rb'
require './tree.rb'

def search(path, root, value, sum)
  if(root == nil) then
    return path
  end
  sum += root.value
  path.push(root)
  if(sum == value) then
    path.print
  end
  path = search(path, root.left, value, sum)
  path = search(path, root.right, value, sum)
  path.pop
  return path 
end

def traverse(root, value)
  if(root == nil) then
    return
  end
  path = Stack.new
  search(path, root, value, 0)
  traverse(root.left, value)
  traverse(root.right, value)
end

#example tree:
#0:         (5)
#           / \
#1:       (3)  (-2)
#        /   \    \
#2:   (11)   (-9) (18)
#     / \    /  \    \
#3:(-10)(2)(7) (1)   (-18)
#                     /
#4:                 (5)
#construct example tree
#construct tree nodes
root = TreeNode.new(5)
node11 = TreeNode.new(3)
node12 = TreeNode.new(-2)
node21 = TreeNode.new(11)
node22 = TreeNode.new(-9)
node23 = TreeNode.new(18)
node31 = TreeNode.new(-10)
node32 = TreeNode.new(2)
node33 = TreeNode.new(7)
node34 = TreeNode.new(1)
node35 = TreeNode.new(-18)
node41 = TreeNode.new(5)
#construct tree paths
root.left = node11
node11.left = node21
node21.left = node31
node21.right = node32
node11.right = node22
node22.left = node33
node22.right = node34
root.right = node12
node12.right = node23
node23.right= node35
node35.left = node41
#search tree for all paths adding up to 1
traverse(root, 1)
#output:
#3
#-9
#7
#---------
#11
#-10
#---------
#1
#---------








  