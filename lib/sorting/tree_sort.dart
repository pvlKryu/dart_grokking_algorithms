// O(nlog(n))

final class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
}

TreeNode insert(TreeNode? root, int value) {
  if (root == null) {
    return TreeNode(value);
  }
  if (value < root.value) {
    root.left = insert(root.left, value);
  } else {
    root.right = insert(root.right, value);
  }
  return root;
}

void inOrderTraversal(TreeNode? root, List<int> sortedList) {
  if (root != null) {
    inOrderTraversal(root.left, sortedList);
    sortedList.add(root.value);
    inOrderTraversal(root.right, sortedList);
  }
}

List<int> treeSort(List<int> array) {
  TreeNode? root;
  for (int value in array) {
    root = insert(root, value);
  }
  List<int> sortedList = [];
  inOrderTraversal(root, sortedList);
  return sortedList;
}
